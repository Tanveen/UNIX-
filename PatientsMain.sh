#!/bin/sh
echo "!-----PATIENTS MENU-----!"
awk '
	NR==FNR {if (length > max_length)
			max_length =length
		max_FNR=FNR
		save[FNR]=$0
		next
		}
		{print"%-*s",max_length+2 save[FNR]
		print		}
	END{if (FNR < max_FNR){
		for(i=FNR+1;i<=max_FNR;i++)
		print save[i]
		}
		}' AdmittedPatients PharmacyPrescriptions.txt> temp

awk -F: '$2~/^[A-Za-z]/ {print "Patient-->" $2 ": is diagnosed with--> " $7 "  and is admitted in Hospital on date: " $4 ".Patient is treated by DR.   "$8  "\n"}' temp		
