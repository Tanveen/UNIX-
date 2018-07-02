#!/bin/sh
echo "Enter the room number:" 
read roomNumber
while true
do
	if [[ $roomNumber == [0-9][0-9][0-9] ]]
	then
		break
	else
		echo "Enter the valid Room Number:"
		echo "Enter Room Number:"
		read roomNumber
	fi
done
echo "Room type:"
read roomType
while true;
do
	if [[ $roomType == [a-zA-Z][a-zA-Z]*  ]]
	then
		break
	else
		echo "Enter the Valid Entry"
		echo "Room Type:"
		read roomType	
	fi
done
echo "Enter Room Size:"
read roomSize
while true;
do
	if [[ $roomSize == [0-9]*  ]]
	then		
		break
	else
		echo "Enter the Valid Entry"
		echo "Room Size:"
		read roomSize
	fi
done
echo "Enter the number of Beds:" 
read noOfBeds
while true;
do
	if [[ $noOfBeds == [1-9] ]]
	then
		break
	else
		echo "Enter the Valid Number"
		echo "Enter the number of Beds:"
		read  noOfBeds	
	fi
done
id=`awk 'END{print}' Rooms.txt`
if [[ ! -s Rooms.txt ]]
then
	echo "ROOM NUMBER":"ROOM TYPE":" ROOM SIZE":" NUMBER OF BEDS" >> Rooms.txt
	echo "$roomNumber":"$roomType":"$roomSize"sq.ft"":"$noOfBeds">> Rooms.txt
else
	echo "$roomNumber":"$roomType":"$roomSize"sq.ft"":"$noOfBeds">>Rooms.txt
	awk '{print}' Rooms.txt
fi
echo "-------------------------------------------"

