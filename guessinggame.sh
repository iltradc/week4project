#!/bin/bash
# File: guessinggame.sh

# Determine how many regular files are in the current directory
nfiles=$(ls -Ad (.*|*) | wc -l | egrep -o "[0-9]+")

# Initialize a guess value
guess=-1

while [[ $guess -ne $nfiles ]]
do 
	# Ask the user to guess how many files are in the directory
	echo "Please enter a guess for the number of files in the current directory: "	
	read guess
	
	# Tell the user if the guess is high or low
	if [[ $guess -gt $nfiles ]]
	then
		echo "Number of files is less than $guess"
	elif [[ $guess -lt $files ]]
	then
		echo "Number of files is greater than $guess" 	
	elif [[ $guess -eq $files ]]
	then
		echo "Congratulations! Your guess is correct!"
		echo "There are $guess files in the current directory."
	fi
done


