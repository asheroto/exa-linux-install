#!/bin/bash

# Check if exa already exists
if command -v exa == null; then
  echo 'Error: exa is already installed. If Exa is not working, please open an Issue on GitHub.'
  exit
fi

# Check if /usr/bin directory exists
if [ ! -d /usr/bin ]
then
    echo "Error: Directory /usr/bin does not exist. Please open an Issue on GitHub."
    exit
fi

echo

echo "Installing prerequisites..."
apt upgrade git curl unzip -y

echo "Creating temporary install directory and entering into it..."
mkdir tmp_install_exa_linux
cd tmp_install_exa_linux || exit
echo

echo "Downloading latest exa Linux binary..."
wget -q $(curl -s https://api.github.com/repos/ogham/exa/releases/latest | grep -Po '"browser_download_url": "\K.*?(?=")' | grep linux)
echo

echo "Extracting binary from zip file..."
unzip exa-linux-x86_64-* > /dev/null
echo

echo "Removing zip file..."
rm exa-linux-x86_64-*.zip
echo

echo "Renaming binary..."
mv exa-linux-x86_64 exa
echo

echo "Moving exa into /usr/bin..."
mv exa /usr/bin/
echo

echo "Installation complete. If you had an issue or see a 'not found' error message, please open an Issue on GitHub."
echo

exa -v
