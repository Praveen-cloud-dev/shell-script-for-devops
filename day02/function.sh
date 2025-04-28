#!/bin/bash


function age() {
read -p "enter your age" age
if [[ $age -le 18 ]];
then
	echo "minor"
else
	echo "mature"
fi
}
age
