#!/bin/bash

echo "-- Message of the Day --"
#prompt the user to get the day
read -p "--Enter Day: " day

#evaluate the result according to the user input
case $day in
	Monday)
		echo "First Day of the Week... Back to University"
		;;
	Tuesday)
		echo "Second Day of the Week"
		;;
	Wednesday)
		echo "Third Day of the Week"
		;;
	Thursday)
		echo "Fourth Day of the Week"
		;;
	Friday)
		echo "Half Day"
		;;
	Saturday)
		echo "Weekend"
		;;
	Sunday)
		echo "Last Holiday"
		;;
	*)	#handle invalid inputs
		echo "-- Invalid Input! --"
		;;
#end of switch
esac

exit 0
