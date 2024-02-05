#!/bin/bash

# EXP ID
# > 4.3 

# AIM
# > print last login details and number of users login

# CODE
last | awk '{print $1,$4,$5,$6}' | sort -u


# try using awk
# awk '{print $1,$5}' | sort -u
