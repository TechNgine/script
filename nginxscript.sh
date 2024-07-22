#!/bin/bash

echo "Script started"
sleep 2s

# Function to check if a package is installed
is_installed() {
  dpkg -l | grep -q "$1"
}
# Install tree if not installed
if ! is_installed tree; then
  echo "Installing tree"
  sudo apt install tree -y
else
  echo "tree is already installed"
fi


# Install nginx if not installed
if ! is_installed nginx; then
  echo "Installing Nginx"
  sudo apt update
  sudo apt install nginx -y
else
  echo "Nginx is already installed"
fi

sleep 1s
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
sleep 2s

echo "Step 2: Configuring nginx.........."
echo "Copying config files to /etc/nginx/sites-available/tindog"
sudo cat > /etc/nginx/sites-available/tindog <<EOL
server {
  listen 80;
  server_name localhost;

  root /var/www/tindog;
  index index.html;
}
EOL

sleep 3s
echo "Config files copied successfully"
sleep 1s
echo "Creating link"
sudo ln -s /etc/nginx/sites-available/tindog /etc/nginx/sites-enabled/

echo "Linked successfully"
sleep 2s

echo "Verify config file"
sudo nginx -t

sleep 1s
echo "Reloading nginx"
sudo systemctl reload nginx
echo "Setup complete"

# This part copies from GitHub
echo "----------------------------------"
echo "Step 3: Copy website content"
echo "***********************************"
sleep 4s
echo "..............."
echo "..........."
sleep 1s

# Install git if not installed
if ! is_installed git; then
  echo "Installing Git"
  sudo apt install git -y
else
  echo "Git is already installed"
fi

echo "Cloning repo"
sudo chmod 777 /var/www
cd /var/www
pwd
pwd
pwd
git clone https://github.com/TechNgine/tindog.git
pwd
pwd
pwd
sleep 3s
tree tindog
sleep 3s
cd /var/www/html
pwd
pwd
pwd
pwd
pwd
sudo rm -rf *
cd ..

echo "Deleted html content"
sleep 1s
echo "Copying files"
cd tindog
sudo cp -r * ../html
cd ~
echo "**********************************"

echo "Nginx setup is complete"
echo "Website is hosted at localhost"
echo "Server is up $(uptime)"

echo "***********************************"
