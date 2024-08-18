#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Script started"

# Function to check if a package is installed
is_installed() {
  dpkg -l | grep -q "$1"
}

# Install tree if not installed
if ! is_installed tree; then
  echo "Installing tree..."
  sudo apt install tree -y
else
  echo "Tree is already installed."
fi

# Install nginx if not installed
if ! is_installed nginx; then
  echo "Installing Nginx..."
  sudo apt update
  sudo apt install nginx -y
else
  echo "Nginx is already installed."
fi

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Check NGINX Status
echo "Checking NGINX status..."
if systemctl is-active --quiet nginx; then
    echo "NGINX is running."
else
    echo "NGINX is not running. Please check the logs."
    exit 1
fi

# Configure Nginx
echo "Configuring Nginx..."
echo "Copying config files to /etc/nginx/sites-available/tindog"
sudo bash -c 'cat > /etc/nginx/sites-available/tindog <<EOL
server {
  listen 80;
  server_name localhost;

  root /var/www/tindog;
  index index.html;
}
EOL'

echo "Config files copied successfully."
echo "Creating symbolic link..."
sudo ln -sf /etc/nginx/sites-available/tindog /etc/nginx/sites-enabled/
echo "Linked successfully."

# Verify and reload Nginx configuration
echo "Verifying Nginx configuration..."
sudo nginx -t
echo "Reloading Nginx..."
sudo systemctl reload nginx
echo "Setup complete."

# Clone website content from GitHub
echo "----------------------------------"
echo "Step 3: Copying website content..."
if ! is_installed git; then
  echo "Installing Git..."
  sudo apt install git -y
else
  echo "Git is already installed."
fi

# Ensure the /var/www directory is writable
sudo chmod 777 /var/www

# Clone the repository into /var/www/tindog
echo "Cloning repository..."
if [ -d "/var/www/tindog" ]; then
  echo "Removing existing tindog directory..."
  sudo rm -rf /var/www/tindog  # Remove the existing directory if it exists
fi

git clone https://github.com/TechNgine/tindog.git /var/www/tindog

# Copy files to the web root
echo "Copying files to /var/www/html..."
if [ ! -d "/var/www/html" ]; then
  echo "Creating /var/www/html directory..."
  sudo mkdir -p /var/www/html
fi

sudo cp -r /var/www/tindog/* /var/www/html/

echo "Nginx setup is complete."
echo "Website is hosted at http://localhost"
echo "Server is up $(uptime)"
