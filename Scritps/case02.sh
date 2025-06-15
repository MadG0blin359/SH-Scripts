#!/bin/bash

#variable to store final result
result=''

echo "-- Temperature Conversion --"
#display user menu
echo -e "1. Celsius to Fahrenheit \n2. Fahrenheit to Celsius"
read -p "--Enter choice: " choice	#prompt the user to select the conversion type

#evaluate according to the user choice
case $choice in
1)	#convert celsius to fahrenheit	
	#read the user choice
	read -p "--Enter temperature in Celsius : " temp
	result=$(( temp * 9 / 5 + 32))
	echo "-> Fahrenheit : $result"
	;;
2)	#convert fahrenheit to celsius
	#read the user choice
	read -p "--Enter temperature in Fahrenheit : " temp
	result=$(( (temp - 32) * 5 / 9))
	echo "-> Celsius : $result"
	;;
*)	#handle invalid inputs
	echo "-- Invalid Input! --"
	;;
esac

exit 0
