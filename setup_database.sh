#!/bin/bash

# Prompt for MySQL root password
read -sp "Enter MySQL root password: " MYSQL_ROOT_PASSWORD
echo

# Update package list
echo "Updating package list..."
sudo apt update

# Install MySQL server
echo "Installing MySQL server..."
sudo apt install mysql-server -y

# Secure MySQL installation
echo "Securing MySQL installation..."
sudo mysql_secure_installation <<EOF

y
$MYSQL_ROOT_PASSWORD
$MYSQL_ROOT_PASSWORD
y
y
y
y
EOF

# Create a sample database and user
read -p "Enter the name of the new database: " DB_NAME
read -p "Enter the name of the new MySQL user: " DB_USER
read -sp "Enter the password for the new MySQL user: " DB_PASSWORD
echo

# Log into MySQL as root and create the database and user
echo "Setting up database and user..."
sudo mysql -u root -p$MYSQL_ROOT_PASSWORD <<EOF
CREATE DATABASE $DB_NAME;
CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
EOF

# Print success message and URL
echo "MySQL installation and setup completed successfully."
echo "Database '$DB_NAME' and user '$DB_USER' created."
echo "You can access the MySQL server locally using the following command:"
echo "mysql -u $DB_USER -p$DB_PASSWORD $DB_NAME"
echo "or by visiting the following URL:"
echo "mysql://$DB_USER:$DB_PASSWORD@localhost/$DB_NAME"

# Optional: Open MySQL port in firewall
# Uncomment the following lines if you want to allow remote access to MySQL server (not recommended for production)
# echo "Opening MySQL port in firewall..."
# sudo ufw allow 3306

echo "Setup complete."
sleep 3s
