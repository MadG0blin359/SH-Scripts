#!/bin/bash

name=$1		#name variable
rollNo=$2	#roll-number variable

if [ -z $name -o -z $rollNo ]; then	#check if a parameter is null
	echo "-> Please provide your 'Name' & 'Roll Numebr'"
else	#prompt the user to enter the data
	echo "-- You are requested to input your data --"
	read -p "-> Enter Your Current Semester: " semester
	read -p "-> Enter Your Degree Program: " degree
	read -p "-> Enter Your Batch: " batch
	read -p "-> Enter Your City: " city
	#display the user details
	echo "$IFS -- User Information -- $IFS >> Name: $name $IFS >> Roll Number: $rollNo $IFS >> Semester: $semester $IFS >> Degree: $degree $IFS >> Batch: $batch $IFS >> City: $city"
fi

exit 0
