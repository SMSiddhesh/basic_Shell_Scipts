#!/bin/bash

while true; do
  echo "Menu:"
  echo "1. View Files"
  echo "2. Date"
  echo "3. Exit"
  read -p "Enter your choice [1-3]: " choice

  case $choice in
    1)
      echo "Files in current directory:"
      ls
      ;;
    2)
      echo "Current date and time:"
      date
      ;;
    3)
      echo "Exiting..."
      break
      ;;
    *)
      echo "Invalid option. Please try again."
      ;;
  esac
done



