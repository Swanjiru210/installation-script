#!/bin/bash
# check for and install Wget
if command -v wget &>/dev/nul; then
   echo "wget is already installed"
else
    echo "installing Wget..."
    sudo apt-get install -y wget
fi

# check for and install Git
if command -v git &>/dev/null; then
   echo "Git is already installed"
else
   echo "installing Git..."
   sudo apt-get installing -y git
fi

