#!/bin/sh
echo "!-----ROOM MENU-----!"
echo "1. Insert Room."
echo "2. Search Room."
echo "3. Delete Room."
echo "4. Update Room."
echo "5. Back."
echo "6. Logout."
echo "____________________"
echo "Enter your choice:"
read choice
case $choice in
1)
	. ./InsertRoom.sh
	. ./RoomMain.sh
	;;
2)
	. ./SearchRoom.sh
	. ./RoomMain.sh
	;;
3)
	. ./DeleteRoom.sh
	. ./RoomMain.sh
	;;
4)
	. ./EditRoom.sh
	. ./RoomMain.sh
	;;
5)
	clear
	. ./StartHere
	;;
6)
	clear
	echo "YOU ARE SUCCESSFULLY LOGGED OUT"
	exit 0
	;;
*)
	echo "------------------------"
	echo "ENTER THE CORRECT CHOICE"
	echo "------------------------"
	;;
esac
