#!/bin/sh
echo "Enter the ID of the Doctor:" 
read doctorID
echo "Enter the First Name:"
read firstDoctor
echo "Enter the Last Name:"
read lastDoctor
echo "Enter the Speciality of the Doctor:"
read specialDoctor
echo "Enter the Office of the Doctor:"
read officeDoctor
if [[ $1 == "$doctorID" ]]
then
	echo "Doctor Already Exists in the Books"
else
	echo "$doctorID":"$firstDoctor":"$lastDocotr":"$specialDoctor":"$officeDoctor">> Doctor.txt
	awk -F: '{print}' Doctor.txt
fi
echo "----DATA INSERTED SUCCESSFULLY-----"
