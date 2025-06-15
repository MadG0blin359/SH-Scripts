#!/bin/bash

#display prompt
PS3="Select : "

#total available options
languages="Python Java C++ JavaScript Exit"

#using select loop to entertain user choice
select lang in $languages
do
	if [ $lang == "Exit" ]; then
		echo "Exiting..."		
		break
	fi
	
	echo "You Selected : $lang"
done

exit 0
