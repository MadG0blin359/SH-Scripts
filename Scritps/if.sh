#!/bin/bash

#read inputs from the user
read -p "--Enter a number : " num
read -p "--Enter factor : " fac

#determine the factor
if [ $( expr $num % $fac ) -eq 0 ]; then
	echo "$num have $fac as a factor."
	exit 0
fi

#display not a factor
echo "$num does NOT have $fac as a factor."

exit 0
