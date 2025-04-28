#!/bin/bash
<<comment
$1 for file name
$2 for intial val
$3 for final range
comment

#this for and while loop
for((i=$2 ; i<=$3; i++))
do
	mkdir $1$i
done
