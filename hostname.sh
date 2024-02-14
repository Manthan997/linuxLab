#!/bin/bash

# EXP ID
# > 6A

# AIM
# > accept hostname and ip address and add to /ect/hosts

# CODE
read -p "Enter hostname: " hname
read -p "Enter IP address of the host: " ip
sed -i.bkp "$a $hname $ip:   /etc/hosts"

