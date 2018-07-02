#!/bin/sh
echo "Search the room by Room Number, Room Type OR Room Size:"
read choice
temp=`awk -F: '$1~'"/$choice/"' || $2~'"/$choice/"' || $3~ '"/$choice/"' ' Rooms.txt`
if [[! -z temp ]]
then
	echo "Search Results for \"$choice\" from Rooms Book"
	awk -F: '$1~'"/$choice/"' || $2~'"/$choice/"' || $3~ '"/$choice/"' {print}' Rooms.txt
	echo ""
else
	echo "------NO RESULTS FOUND-------"
fi

