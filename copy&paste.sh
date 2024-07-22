#!/bin/bash

echo "Script started"
sleep 2s

# Ensure necessary packages are installed
echo "Updating package list"
sudo apt update

# Check if build-essential is installed, if not, install it
if ! dpkg -l | grep -q build-essential; then
  echo "Installing build-essential"
  sudo apt install build-essential -y
else
  echo "build-essential is already installed"
fi

# Check if dkms is installed, if not, install it
if ! dpkg -l | grep -q dkms; then
  echo "Installing dkms"
  sudo apt install dkms -y
else
  echo "dkms is already installed"
fi

# Check if linux-headers are installed, if not, install them
if ! dpkg -l | grep -q $(uname -r); then
  echo "Installing linux-headers"
  sudo apt install linux-headers-$(uname -r) -y
else
  echo "linux-headers for $(uname -r) are already installed"
fi

# Mount the Guest Additions CD
echo "Mounting the Guest Additions CD"
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom

# Run the Guest Additions installer
echo "Running the Guest Additions installer"
sudo /mnt/cdrom/VBoxLinuxAdditions.run

# Unmount the CD
echo "Unmounting the Guest Additions CD"
sudo umount /mnt/cdrom

# Clean up
echo "Cleaning up"
sudo rmdir /mnt/cdrom

echo "Guest Additions installation complete"
echo "Please reboot the machine to complete the setup"
sleep 3s
