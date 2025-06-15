#!/bin/bash

#funcion to determine the numbers property
checkEvenOdd() {
local num=$1
local result=$( expr $num % 2)	#check the remainder of a number
	if [ $result -eq 0 ]; then	#if remainder is zero	
		echo "Number is Even"
	else		#if remainder is non-zero
		echo "Number is Odd"
	fi
}

#validate the user-provided arguments
if [ $# -eq 0 -o $# -gt 1 ]; then
	echo "Please Enter at least & at most 1 Number."
	exit 1
fi

#call the fucntion with argument
checkEvenOdd $1

exit 0
