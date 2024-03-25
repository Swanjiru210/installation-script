#!/bin/bash
# this script must run as the root
if [ $EUID -ne 0 ]
then 
    echo "this script must be run as root"
    exit 1
fi

# Check for and install docker
if command -v docker &> /dev/null; then
    echo "docker is already installed"
else
    echo "Installing docker..."
    sudo apt-get install -y docker
fi