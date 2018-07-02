#!/bin/sh
echo ""
echo "--------REGISTRATION----------"
echo "------------------------------"
echo "WELCOME TO BRIDGEPORT HOSPITAL"
echo "------------------------------"
echo "Enter the First Name:"
read firstName
echo "Enter the Last Name:"
read lastName
echo "Enter the username:"
read username
echo "Enter the password:"
read password
echo "Enter the ID:"
read id
echo ""
echo "------------------------------"
if [ ! -s login.txt ]
then
	echo "USERNAME":"PASSWORD" >> login.txt
	echo "$username ":" $password" >> login.txt
else
	echo "$username ":" $password" >> login.txt
fi
if [ ! -s Patient.txt ]
then
	echo "PATIENT ID":"FIRSTNAME":"LASTNAME " >> Patient.txt
	echo "$id":"$firstName":"$lastName" >> Patient.txt
else
	echo "$id":"$firstName":"$lastName" >> Patient.txt
fi
echo "######################"
echo "REGISTRATION SUCCESSFUL"
echo "######################"
echo "Redirecting"
	. ./ProjectWelcome.sh
