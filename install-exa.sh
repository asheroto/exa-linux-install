#!/bin/bash

# Check if exa already exists
if command -v exa == null; then
  echo 'Error: exa is already installed.'
  exit
fi

echo

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

echo "Moving exa into /usr/local/bin..."
mv exa /usr/local/bin
echo

echo "Removing temporary install directory..."
cd ../
rm tmp_install_exa_linux -rf
echo

echo "Installation complete. Type 'exa --help' for more information."
echo

exa -v