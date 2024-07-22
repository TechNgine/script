#!/bin/bash
read -p "Enter the network (e.g., 192.168.1.0/24): " NETWORK
echo "Scanning the network for active devices..."
nmap -sn "$NETWORK"
