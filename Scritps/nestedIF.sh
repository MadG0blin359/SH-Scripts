#!/bin/bash

echo "-- Check Voting Eligibility --"
#prompt the user to enter their age
read -p "--Enter your age : " age

#conditional statements to validate and determine the user input
if [ "$age" -ge 0 ]; then
	if [ "$age" -ge 18 ]; then 
		echo "-> You are eligible to vote!"
	else
		echo "-> You are NOT eligible to vote!"
	fi
else
	echo "-- Invalid Input! --"
fi

exit 0
