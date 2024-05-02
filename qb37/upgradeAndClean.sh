#!/bin/bash

# EXP ID
# > 4

# AIM
# > automate system updates and upgrades

# CODE

# update package list
sudo apt update

# upgrade
sudo apt upgrade -y

# clean or autoremove
sudo apt autoremove -y

# clean package cache
sudo apt clean -y

# success flag
echo "system updates completed !!"

