#!/bin/sh
clear
awk -F: '{print}' Doctor.txt
echo "--------------------------------------------------"
echo "Enter the ID of the doctor to remove Doctor:"
read id
while true;
do
	if [[ $id == [D]* ]]
	then
		break
	else
		echo "Enter a Valid ID for Doctor"
		echo "Enter the ID of the doctor to remove Doctor:" 
		read id
	fi
done
temp=`awk -F: '$1=="$id"' Doctor.txt`
awk -F: '$1!~"$id"' Doctor.txt > cover && mv cover Doctor.txt

if [[-z "$temp" ]]
then
	echo "-----RECORD NOT FOUND-----"
else
	clear
	awk -F: '{print}' Doctor.txt
fi

