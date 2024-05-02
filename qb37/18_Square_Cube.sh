#!/bin/bash

echo "Number   Square   Cube"
echo "-----------------------"

for ((num=1; num<=10; num++))
do
    square=$((num * num))
    cube=$((num * num * num))
    echo -e "$num\t$square\t$cube"
done
