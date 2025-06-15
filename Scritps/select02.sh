#!/bin/bash

#display the prompt
PS3="--Select Option : "

#display the list of options
select choice in "Create a file" "Delete a file" "List files" "Exit"
do
	case $choice in
        "Create a file") #create a new file in the current directory
		read -p "--Enter Filename : " fileName
		touch $fileName
		echo "$fileName Successfully Created!"
		;;
        "Delete a file") #remove a file if it exist
		read -p "--Enter Filename : " fileName
		if [ -f $fileName ]; then
			rm $fileName
			continue;
		fi
		echo "$fileName Doesn't Exist!"
		;;
        "List files") #display all the files in the pwd
		ls
		;;
        "Exit") #terminate loop
		echo "Exiting..."
		break
		;;
        *) #handle invalid inputs
		echo "--Invalid Input!--"
		;;
	
	    esac

done

exit 0


