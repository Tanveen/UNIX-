#!/bin/sh
echo "Search the Doctor by ID, First Name, Last Name, Speciality or Office:" 
read choice
clear
temp=`awk -F: '$1~"/$choice/" || $2~ "/$choice/" || $3~ "/$choice/" || $4~ "/$choice/"' Doctor.txt`
if [[! -z "$temp" ]]
then
	echo "Search Results for \"$choice\" from Doctor Books are:"
	awk -F: '$1~"/$choice/" || $2~ "/$choice/" || $3~ "/$choice/" || $4~ "/$choice/" {print $0}' Doctor.txt
else
	echo "-----NO SUCH RECORD-----"
fi

