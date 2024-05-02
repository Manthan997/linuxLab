#!/bin/bash

# EXP ID
# > exp1

# AIM
# > script to show system config like users, login-name current shell, home directory, OS type, current path, current working directory, number of users logged in etc

# CODE
echo "Currently logged user and his logname"  
who   
echo "Your current shell"  
echo $SHELL  
echo
echo "Your home directory"  
echo $HOME 
echo 
echo "Your operating system type"  
uname  
echo
echo "Your current path setting"  
echo $PATH 
echo 
echo "Your current working directory"  
pwd
echo  
echo "Show currently logged number of users"   
who | grep -c .  
echo
echo "About your os and version, release number, kernel version"  
uname -a  
echo
echo "Show all available shells"  
cat /etc/shells  
echo
# echo "Show mouse settings"  
# xev
# this is commented out because it opens a new window and the script stops

echo "Show computer CPU information like processor type, speed etc"  
cat /proc/cpuinfo | head -n 10
echo "Show memory information"  
cat /proc/meminfo  | head -n 10
echo "Show hard disk information like size of hard-disk, cache memory, model etc');"  
sudo lshw -class  disk  | head -n 10

