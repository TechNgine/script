#!/bin/bash

echo "Script started"
sleep 2s
echo "Installing Ngnix"
sudo apt install nginx -y
sleep 1s
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
sleep 2s


echo "Step 2: COnfiguring nginx.........."
echo "Copying config files  to /etc/nginx/sites/enabled/tindog"
sudo cat > /etc/nginx/sites-available/tindog <<EOL
server {
  listen 80;
  server_name localhost;

  root /var/www/tindog;
  index index.html;

}
EOL
 sleep 3s
echo "COnfig files copied succesfully"
sleep 1s
echo "creating link"
sudo ln -s /etc/nginx/sites-available/tindog /etc/nginx/sites-enabled/

echo "LInked susccesfully"
sleep 2s

echo "Verify config file"
sudo nginx -t



sleep 1s
echo "reloading nginx"
sudo systemctl reload nginx
echo "setup complete"

# This part copies from github
echo " ----------------------------------"
echo "step 3: copy website content"
echo "***********************************"
sleep 4s
echo "..............."
echo "..........."
sleep 1s
echo "install git"
sudo apt install git -y
echo "cloning repo"
sudo cd /var/www
git clone https://github.com/TechNgine/tindog.git
pwd
sleep 3s
tree tindog
sleep 3s
cd html
sudo rm -rf *
cd ..

echo "deleted html content"
sleep 1s
echo "copying files"
cd tindog
sudo cp * ../html
cd ~
echo "**********************************"

echo "nginx setup is complete"
echo "webiste is hosted at localhost"
echo "server is up $(uptime)"

echo "***********************************"
