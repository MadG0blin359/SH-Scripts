#!/bin/bash

#global variable to store number of arguments
count=$#

#validate the minimum number of arguments
if [ $count -le 3 ]; then
	echo "You should enter more than 3 numbers."
	exit 1
fi

totalValues=$count
sum=0

#while loop to iterate through all arguments
while [ $count -gt 0 ];
do
	sum=$( expr $sum + $1 )
	shift	#ignore the counted argument
	let count--
done

#display the results
echo "Total Sum is : $sum"
echo "Total Values are : $totalValues"
average=$( expr $sum / $totalValues )
echo "Average : $average"

exit 0
