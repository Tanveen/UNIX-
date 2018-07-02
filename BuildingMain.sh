#!/bin/sh
echo "!-----BUILDING MENU-----!"
echo "1. Insert Building"
echo "2. Search Building"
echo "3. Delete Building"
echo "4. Update Building"
echo "5. Back"
echo "6. Logout"
echo "________________________"
echo "Enter your choice:"
read choice
case $choice in
1)
	./InsertBuilding.sh
	./BuildingMain.sh
	;;
2)
	 ./SearchBuilding.sh
	 ./BuildingMain.sh
	;;
3)	 ./DeleteBuilding.sh
	 ./BuildingMain.sh
	;;
4)	 ./EditBuilding.sh
	 ./BuildingMain.sh
	;;
5)
	clear
	 ./StartHere
	;;
6)
	clear
	echo "YOU ARE SUCCESSFULLY LOGGED OUT"
	echo "Exit 0"
	;;
*)
	echo "------------------------"
	echo "ENTER THE CORRECT CHOICE"
	echo "------------------------"
	;;
esac
