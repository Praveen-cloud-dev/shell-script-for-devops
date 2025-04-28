#!/bin/bash
#this is single line commment
<<comment
this is multi ine comment 
line 1
line 2
comment
name="jethalal"
echo "name is $name, and date is $(date)"
echo "enter name: "
read user
echo "you name is $user"
echo "the character in $0 are $1 $2"
