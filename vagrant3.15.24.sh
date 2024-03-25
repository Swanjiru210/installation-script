#!/bin/bash
# this script must run as the root
if [ $EUID -ne 0 ]
then 
    echo "this script must be run as root"
    exit 1
fi
# this command will update the packages
apt-get update -y
# this command will upgrade the packages
apt-get upgrade -y
# install security updates
apt-get dist-upgrade -y
# cleanup unnecessary packages
apt autoremove -y
apt autoclean -y
# check for and install docker
if command -v docker &> /dev/null; then
   echo "Docker is already installed"
else
    echo "Installing Docker..."
    sudo apt-get update
    sudo apt-get install -y docker.io
    sudo systemctl start docker
    sudo systemct1 enable docker
fi

# check for and install Wget
if command -v wget &> /dev/null; then
   echo "Wget is already installed"
else
    echo "installing Wget..."
    sudo apt-get install -y wget
fi

# check for and install Git
if command -v git &> /dev/null; then
   echo "Git is already installed"
else
    echo "installing Git..."
    sudo apt-get install -y git
fi

# check for and install Mysql
if command -v mysql &> /dev/null; then
   echo "MySQL is already installed"
else
    echo "Installing MySQL..."
    sudo apt-get install -y mysql-server
    sudo systemctl start mysql
    sudo systemctl enable mysql
fi


    
