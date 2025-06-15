#!/bin/bash

#validate the user call
if [ $# -eq 0 -o $# -gt 1 ]; then
	echo "Please Give Exactly 1 Filename."
	exit 1
fi

#store file name
fileName=$1

#create a file
touch $fileName

#read content from the user
read -p "Enter Content : " content

#append content to file
echo "$content" >> $fileName

#display file content
echo "File Content:"	
cat $fileName

exit 0
