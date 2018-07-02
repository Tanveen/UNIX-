#!/bin/sh
awk '{print}' Rooms.txt
echo "----------------------------------------"
echo "Enter the room number to remove the room"
echo "----------------------------------------" 
read roomNumber
temp=`awk -F: '$1=="$roomNumber"' Rooms.txt`
awk -F: '$1!~"$roomNumber" {print}' Rooms.txt > cover && mv cover Rooms.txt

if [[ ! -z "$temp" ]] 
then
	clear
	awk '{print}' Rooms.txt
else
	echo "----NO SUCH ROOM NUMBER-----"
fi
