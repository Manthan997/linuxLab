#!/bin/bash

# EXP ID
# > 6A

# AIM
# > accept hostname and ip address and add to /ect/hosts

# CODE
read -p "Enter hostname: " hname
read -p "Enter IP address of the host: " ip
# sed -i.bkp "$a $hname $ip:   /etc/hosts"

echo "$ip $hname" >> /etc/hosts
# the >> makes it append the file and > makes it trunkate the file

