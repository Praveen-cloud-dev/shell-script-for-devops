#!/bin/bash
read -p "enter your age :" age
if [[ $age -ge 18 && $age -le 59 ]];
then
	echo "you can drive"
elif [[ $age -ge 60 ]];
then
	echo "you are senior sitizen you have to renew your lisens after everry 5 years"
elif [[ $age -ge 16 && $age  -le 18 ]];
then
	echo "you ca apply learner lisence"
else
	echo "you are not mature for driving"
fi
