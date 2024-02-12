#!/bin/bash

# EXP ID
# > 7.1 >> INCOMPLETE

# AIM
# >

# CODE

usage() { echo "Usage: $0 [-s <45|90>] [-p <string>]" 1>&2; exit 1; }




# i. Positional Parameters
echo "i. Positional Parameters:"
echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
echo "All Arguments:  $@"
echo "Number of Arguments: \$#: $#"
echo "--------------------------------"

# using flags
while getopts "s:p:" o; do
    case "${o}" in
        s)
            s=${OPTARG}
            ((s == 45 || s == 90)) || usage
            ;;
        p)
            p=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${s}" ] || [ -z "${p}" ]; then
    usage
fi

echo "s = ${s}"
echo "p = ${p}"


# iii. Using Loops with $@ – Loop Constructs
echo "iii. Using Loops with \$@ – Loop Constructs:"
for arg in "$@"; do
  echo "Argument: $arg"
done
echo "--------------------------------"

# iv. Use of $#,$*,$$,$? And $!
echo "iv. Use of \$#,\$*,\$\$,\$?,\$!:"
echo "Number of Arguments: \$#: $#"
echo "All Arguments: \$: $"
echo "Process ID: \$$"
echo "Exit Status of the Last Command: \$?: $?"
echo "Background Process ID: \$!: $!"
echo "--------------------------------"
