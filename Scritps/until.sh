#!/bin/bash

if [ $# -eq 0 -o $# -gt 1 -o $1 -lt 0 ]; then
	echo "Please Provide at least & at most 1 Positive Integer."
	exit 1
elif [ $1 -eq 0 ]; then
	echo "Factorial of $1 is : 1"
	exit 0
fi

value=$1
factorial=$value
let value--

until [ $value -eq 0 ]
do
	factorial=$( expr $factorial \* $value )
	let value--
done

echo "Factorial of $1 is : $factorial"

exit 0
