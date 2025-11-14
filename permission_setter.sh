#!/bin/bash

read -p "Enter the filename: " filename
read -p "Enter the permission number (e.g. 755): " perm

chmod $perm "$filename"

if [ $? -eq 0 ]; then
  echo "Permissions for '$filename' set to $perm successfully."
else
  echo "Failed to set permissions. Please check the filename and permission number."
fi

exit

