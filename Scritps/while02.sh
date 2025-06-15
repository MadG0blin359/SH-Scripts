#!/bin/bash

#prompt the user to enter any number
read -p "Enter Number : " num

#variables to store data
count=2
cal=0

#determine if the number is prime
while [ $count -lt $num ]
do
	#check if the remainder is zero
	cal=$( expr $num % $count )
	if [ $cal -eq 0 ]; then
		echo "$num is NOT a prime number."
		exit 0
	fi
	let count++
done

echo "$num is a prime number."

exit 0
