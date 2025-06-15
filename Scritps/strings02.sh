#!/bin/bash

echo "-- Password Strength Evaluation --"
read -sp "--Enter password : " password

# Check for length (at least 8 characters)
if [ ${#password} -lt 8 ]; then
	echo "The password is weak."

# Check for at least one uppercase letter
elif [ ! "$password" =~ [A-Z] ]; then
	echo "The password is weak."

# Check for at least one lowercase letter
elif [ ! "$password" =~ [a-z] ]; then
	echo "The password is weak."

# Check for at least one digit
elif [ ! "$password" =~ [0-9] ]; then
	echo "The password is weak."

# Check for at least one special character
elif [ ! "$password" =~ [@#$%^&+=] ]; then
	echo "The password is weak."

# If all conditions are met
else
	echo "The password is strong."
fi

exit 0
