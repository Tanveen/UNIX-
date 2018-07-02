#!/bin/sh
echo "UNIX PROJECT SUMMER 2017"
echo "-------------------------------"
echo "WELCOME TO BRIDGEPORT HOSPITAL"
echo "-------------------------------"
echo "1. SIGN IN"
echo "2. REGISTER"
echo "3. EXIT"
echo "--------------------------------------"
echo "ENTER YOUR CHOICE FROM THE ABOVE MENU:" 
read choice
case $choice in
1)
	echo "Enter your Username:"
	read username
	echo "Enter your Password:"
	read password
	#temp=`awk -F: '$1=="$username" && $2=="$password"' login.txt`
 	if [[ $username!~"0" && $password!~"0" ]]
	then
		clear
		echo "YOU ARE SUCCESSFULLY LOGGED IN"	
		echo "REDIRECTING YOU TO MAIN PAGE"
		echo "------------------------------"
		sleep 2
		clear
		 . ./StartHere
	else
		echo "INCORRECT USERNAME OR PASSWORD"
		echo "------------------------------"
		 . ./ProjectWelcome.sh
	fi
	;;
2)
	 ./Registration.sh
	echo "YOU ARE REGISTERED SUCCESSFULLY"
	echo "-------------------------------"
 	 ./ProjectWelcome.sh
	clear
	;;
3)
	clear
	exit 0
	;;
*)
	echo "INCORRECT CHOICE"
	echo "----------------"
	 ./ProjectWelcome.sh
	;;
esac
