#!/bin/sh
awk '{print}' Rooms.txt
echo "-----------------------------------------------------"
echo "Enter the Room Number to edit the content of the room"
read choice
echo "-----------------------------------------------------"
temp=`awk -F: '$1=="$choice"' Rooms.txt`
if [[ ! -z "$temp" ]]
then
	echo "Editing Room Number" $choice
	echo "-----------------------------"
	echo "Enter the Room Type:"
	read roomType
	while true;
	do
		if [[ $roomType == [a-zA-Z][a-zA-Z]* ]]
		then
			break	
		else
			echo "Enter Valid Room Type"
			echo "Enter the Room Type:"
			read roomType
		fi
	done
	echo "Enter the Room Number:"
	read roomNumber
	while true;
	do
		if [[ $roomNumber == [1-9][0-9][0-9] ]]
		then
			break
		else
			echo "Enter the Valid Room Number"
			echo "Enter the Room Number:"
			read roomNumber
		fi
	done
	echo "Enter the Size of the Room:"
	read roomSize
	while true;
	do
		if [[ $roomSize == [0-9][0-9]  ]] 
		then
			break
		else
			echo "Enter the Valid Room Size"
			echo "Enter the Size of the Room:"
			read roomSize
		fi
	done
	echo "Update the number of beds:"
	read numberOfBeds
	while true;
	do
		if [[ $numberOfBeds == [1-9] ]]
		then
			break
		else
			echo "Enter the valid number of Beds"
			echo "Minimum number should be ONE"
			echo "Number of Beds:"
			read numberOfBeds
		fi
	done
	
awk -F: '$1=="$choice" {$1=$roomNumber":"$2=$roomType":"$3=$roomSize"sq.ft"":"$4=numberOfBeds}' Rooms.txt > cover && mv cover Rooms.txt
clear
awk -F: '{print}' Rooms.txt
echo "-----RECORDS UPDATED-----"
else
echo "NO SUCH ROOM NUMBER FOUND"
fi
