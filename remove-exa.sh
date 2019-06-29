#!/bin/bash

# Check if exa already exists
if ! command -v exa >/dev/null; then
  echo "Error: exa is not installed";
  exit
fi

# Removing binary
rm /usr/bin/exa
echo "Exa has been removed."
