#!/bin/bash
<< wrming
this is just for informational purpose
wrming
#yah function define kiya 
function loyal(){
read -p "enter girl:" girl
read -p "$1 ka pyar %" pyaar
if [[ $girl == "daya bhabhi" ]];
then
	echo "$1 is loyal"
elif [[ $pyaar -ge 100 ]];
then
	echo "$1 is loyal"
else
	echo "$1 is not loyal"
fi
}
#function call kiya yaha
loyal "ram"
