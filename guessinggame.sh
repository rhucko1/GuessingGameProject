#!/bin/bash

######################## Global Variable Definitions ########################
NUM_FILES=$(ls -1|wc -l)

#echo "$NUM_FILES"   #### uncomment beginning of line to print number of files for testing ####

########################   Function Definitions   ###########################
function prompt(){
	echo 'How many files are in the current directory? (guess)'
	read GUESS
}
function checkGuess(){
	if (( GUESS == NUM_FILES ));then
		echo 'CONGRATULATIONS! That is CORRECT!'
		break	
	elif (( GUESS < NUM_FILES ));then
		echo 'Sorry, the number you guessed is too low.'
		echo 'please try again . . .'
	elif (( GUESS > NUM_FILES ));then
		echo 'Sorry, the number you guessed is too high.'
		echo 'please try again . . .'
	fi
}
########################   Main Body of Program   ########################
function MAIN(){
	while :
	do
		prompt
		checkGuess
	done
}
MAIN	# init Main()
########################################################################

