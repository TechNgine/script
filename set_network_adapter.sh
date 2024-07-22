#!/bin/bash

# Prompt the user to enter the VM name
read -p "Enter the VM name you would love to configure: " VM_NAME

echo "Configuring network adapters for VM: $VM_NAME"

# Set up the first network adapter (Adapter 1) to an internal network
echo "Setting Adapter 1 to Internal Network 'intnet'"
VBoxManage modifyvm "$VM_NAME" --nic1 intnet
VBoxManage modifyvm "$VM_NAME" --intnet1 "intnet"

# Set up the second network adapter (Adapter 2) to a host-only network
echo "Setting Adapter 2 to Host-Only Network"
VBoxManage modifyvm "$VM_NAME" --nic2 hostonly

# Find the available host-only network interface
HOST_ONLY_IFACE=$(VBoxManage list hostonlyifs | grep -m 1 "^Name:" | awk '{print $2}')
if [ -z "$HOST_ONLY_IFACE" ]; then
    echo "No host-only network interfaces found. Please create one via the VirtualBox GUI."
    exit 1
fi

VBoxManage modifyvm "$VM_NAME" --hostonlyadapter2 "$HOST_ONLY_IFACE"

# Set up the third network adapter (Adapter 3) to NAT for internet access
echo "Setting Adapter 3 to NAT for internet access"
VBoxManage modifyvm "$VM_NAME" --nic3 nat

echo "Network configuration complete for VM: $VM_NAME"
sleep 3s
