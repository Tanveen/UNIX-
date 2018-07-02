#!/bin/sh
awk -F: '{print $0}' Buildings.txt
echo "--------------------------------------------------------------"
echo "Enter Building ID from the following to remove the building"
read id
echo "--------------------------------------------------------------"
temp=`awk -F: '$1=="$id"' Buildings.txt`
#awk '$1!~"/$id/"' Buildings.txt > cover && mv cover Buildings.txt
if [[! -z "$temp"]]
then
	clear
	awk '$1 !~ "$id"' Buildings.txt > cover && mv cover Buildings.txt
	awk -F: '{print}' Buildings.txt
else
	clear	
	echo "----------------------"
	echo "---NO RESULTS FOUND---"
	echo "----------------------"
fi


