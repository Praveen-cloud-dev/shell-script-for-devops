#!/bin/bash
num=1
while [[ $num -le 10 ]]
do
	echo "table of $1x$num = $((num*$1))"
	num=$((num+1))
done
