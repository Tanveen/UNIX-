#!/bin/sh
echo "!----DOCTOR MENU-----!"
echo "1. Insert Doctor."
echo "2. Search Doctor."
echo "3. Delete Doctor."
echo "4. Update Doctor."
echo "5. Back."
echo "6. Logout."
echo "_____________________"
echo "Enter Your Choice:" 
read choice
case $choice in
1)
	 ./InsertDoctor.sh
	 ./DoctorMain.sh
	;;
2)
	 ./SearchDoctor.sh
	 ./DoctorMain.sh
	;;
3)
	 ./DeleteDoctor.sh
	 ./DoctorMain.sh
	;;
4)
	 ./EditDoctor.sh
	 ./DoctorMain.sh
	;;
5)	
	clear
	 ./StartHere
	;;
6)
	clear
	echo "YOU ARE SUCCESSFULLY LOGGED OUT"
	;;
*)
	echo "------------------------"
	echo "ENTER THE CORRECT CHOICE"
	echo "------------------------"
	;;
esac
