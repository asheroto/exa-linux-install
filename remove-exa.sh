#!/bin/bash

# Check if exa already exists
if ! which exa >/dev/null; then
  echo 'exa is not installed' >&2
  exit 1
fi

# Removing binary
rm /usr/local/bin/exa -f

echo "exa has been removed"
