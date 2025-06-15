#!/bin/bash

ls-l () {
	local folderName=$1
	command mkdir $folderName
}


ls-l $1

exit 0


