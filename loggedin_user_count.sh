#!/bin/bash
#script Name: Login User Count
# Description: Shows the total number of logged-in users

# Get total number of logged-in users
count=$(who | wc -l)

# Display the result
echo "Total logged-in users: $count"

# total number of loggin events recorded in history
count2=$(last | grep -v 'reboot'| wc -l)

# Display the rrsult
echo "total number of loggin events recorded in history: $count2"
