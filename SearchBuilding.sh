#!/bin/sh
awk '{print}' Buildings.txt
echo "Search the Building by the ID"
read choice
clear
counting=`awk -F: '$1 ~ "/$choice/"' Buildings.txt`
clear

if [[! -z "$counting"]];
then
	clear
	echo "Search results for \"$choice\" from Building Book are:"
	echo "-----------------------------------------------------"
	awk -F: '$1 ~ "/$choice/" {print}' Buildings.txt
	echo "-----------------------------------------------------"
else
	clear
	echo "----NO RESULTS FOUND----"
fi



