#!/bin/sh
echo "Enter Building ID starting with B"
read buildingID
echo "Building Name:"
read buildingName
echo "Address: "
read address
echo "Number of Rooms:"
read numberOfRooms
echo "Building Manager:"
read buildingManager
echo "Type of the Building:"
read typeOfBuilding
echo "-------------------------"
id=`awk 'END{print}' Buildings.txt`
if [[ ! -s Buildings.txt ]]
then
	echo "BuildingID":"BuildingName":"Address":"NumberOfRooms":"BuildingManager":"TypeOfBuilding">>Buildings.txt
	echo "$buildingID:$buildingName:$address:$numberOfRooms:$buildingManager:$typeOfBuilding">>Buildings.txt
else
	echo "$buildingID:$buildingName:$address:$numberOfRooms:$buildingMAnager:$typeOfBuilding">>Buildings.txt
fi
awk '{print}' Buildings.txt
echo "--------------------------"
echo "DATA INSERTED SUCCESSFULLY"
echo "--------------------------"
	
