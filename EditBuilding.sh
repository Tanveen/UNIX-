#!/bin/sh
awk '{print}' Buildings.txt
echo "-----------------------------------------------------------------------"
echo "Enter the ID of the building from the following to edit the content:"
read id
echo "-----------------------------------------------------------------------"
temp= `awk -F: '$1=="$id"' Buildings.txt`
if [[ "$temp" ]]
then
	echo "Building Name:"
	read buildingName
	while true;
	do
		if [[ $buildingName==[a-zA-Z][a-zA-Z]* ]];
		then
			break
		else
			echo "Enter the Valid Name for Building"
			echo "Building Name:"
			read buildingName
		fi
	done
echo "Address:"
read address
echo "Number of Rooms:" 
read numberOfRooms
echo "Building Manager:"
read buildingManager
echo "Type of the Building:"
read typeOfBuilding
awk '$1=="$id" {$1=$id":"$2=$address":"$3=$numberOfRooms":"$4=$buildingManager":"$5="typeOfBuilding"}' Buildings.txt> cover && mv cover Buildings.txt
awk '{print}' Buildings.txt

else
echo "----------------"
echo "No Results Found"
echo "----------------"
fi
