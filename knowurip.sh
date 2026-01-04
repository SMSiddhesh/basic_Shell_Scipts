#!/bin/bash

IP=$(curl -s https://api.ipify.org || wget -qO- https://ifconfig.me)

if [ -z "$IP" ]; then
    echo "Unable to detect public IP"
else
    echo "Your Public IP is: $IP"
fi

