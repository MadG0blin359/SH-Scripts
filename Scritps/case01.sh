#!/bin/bash

#take input from the user
read -p "--Enter first number : " num1
read -p "--Enter second number : " num2

menu_choice=''		#variable to take user input
result=''		#variable to store arithmetic operation result
#display calculator menu
echo -e "-- Calculator Menu --\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n5. Modulus\n6. Increment\n7. Decrement"
read -p "--Enter Choice: " menu_choice		#prompt the user to input choice

case $menu_choice in
	1)	#adding 2 numbers using let command
		let result=num1+num2
		echo -e "\n-> Addtition of $num1 + $num2 = $result"
		;;
	2)	#subtracting 2 numbers using let command
		let result=num1-num2
		echo -e "\n-> Subtraction of $num1 - $num2 = $result"
		;;
	3)	#multiplying 2 numbers using let command
		let result=num1*num2
		echo -e "\n-> Multiplication of $num1 * $num2 = $result"
		;;
	4)	#dividing 2 numbers using let command
		let result=num1/num2
		echo -e "\n-> Division of $num1 / $num2 = $result"
		;;
	5)	#modulus of 2 numbers using let command
		let result=num1%num2
		echo -e "\n-> Modulus of $num1 % $num2 = $result"
		;;
	6)	#incrementing numbers using let command
		let num1++ num2++
		echo -e "\n-> After incrementing, First num = $num1 & Second num = $num2"
		;;
	7)	#decrementing 2 numbers using let command
		let num1-- num2--
		echo -e "\n-> After decrementing, First num = $num1 & Second num = $num2"
		;;
	*)
		echo -e "\n-- Invalid Input! --"
		;;
	esac

exit 0

