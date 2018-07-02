#!/bin/sh
clear
awk -F: '{print}' Doctor.txt
echo "Enter the ID of the Doctor to edit the Contents:"
read id
while true;
do
	if [[ $id == [D][0-9]* ]]
	then
		break
	else
		echo "Enter the Correct ID"
		echo "ID starts with "D" " 
		echo "Enter the ID of the Doctor to edit the Contents:"
		read id
	fi
done

temp=`awk -F: '$1== $id' Doctor.txt`
if [[ ! -z "$temp" ]]
then
	echo "Editing the Contents of the Doctor with id" $id
	echo "Enter the new ID for the doctor:"
	read doctorID	
	echo "Enter the First Name:" 
	read firstName
	echo "Enter the Last Name:"
	read lastName
	echo "Enter the Speciality:"
	read doctorSpeciality
	echo "Enter the Office:"
	read doctorOffice
	awk -F: '{$1= $doctorID ":"$2=$firstName ":" $3=lastName ":" $4=doctorSpeciality ":" $5=doctorOffice}' Doctor.txt>cover && mv cover Doctor.txt
	awk -F: '{print $0}' Doctor.txt
	echo "RECORD UPDATED SUCCESSFULLY"
else
	echo "-----NO SUCH RECORD TO EDIT-----"
fi
