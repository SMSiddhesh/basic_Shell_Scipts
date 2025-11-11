#!/bin/bash
# Script to display hostname, date, and uptime

echo "*****"
echo "System Information"
echo "*****"

# Display hostname
echo "Hostname     : $(hostname)"

# Display current date and time
echo "Current Date : $(date)"

# Display system uptime
echo "Uptime       : $(uptime -p)"   # '-p' gives a human-readable format like "up 1 hour, 20 minutes"

echo "*****"

exit
