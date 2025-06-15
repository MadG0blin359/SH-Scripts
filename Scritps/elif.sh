#!/bin/bash

echo "-- Online Shopping Platform --"
#prompt the user to enter their spending
read -p "--Enter your total spending amount : " amount

if [ "$amount" -gt 0 ]; then	#validate the user input
	#conditional statements to determine the membership according to the user's spending amount
	if [ "$amount" -ge 1000 ]; then
		echo "-> Membership : Platinum"
	elif [ "$amount" -ge 700 -a "$amount" -le 999 ]; then
		echo "-> Membership : Gold"
	elif [ "$amount" -ge 400 -a "$amount" -le 699 ]; then
		echo "-> Membership : Silver"
	elif [ "$amount" -ge 100 -a "$amount" -le 399 ]; then
		echo "-> Membership : Bronze"
	else
		echo "-> Membership : Basic"
	fi
else
	echo "-- Invalid Input! --"
fi

exit 0
