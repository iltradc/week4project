#!/bin/bash
# File: guessinggame.sh

# Determine how many regular files are in the current directory
nfiles=$(ls -Ap | grep -v / | wc -l | egrep -o "[0-9]+")

# Initialize a guess value
guess=-1

# Define function to compare user guess to the actual number of files
function checkguess {        
	# Ask the user to guess the number of files in the directory
	echo -n "Please guess the number of files in the current directory: "
	read guess

	# If statement to compare the user guess to the actual number of files
	if [[ $guess -gt $nfiles ]]
        then
                echo "Number of files is less than $guess"
        elif [[ $guess -lt $nfiles ]]
        then
                echo "Number of files is greater than $guess"
        elif [[ $guess -eq $nfiles ]]
        then
                echo "Congratulations! Your guess is correct!"
                echo "There are $guess files in the current directory."
        fi
} 

# Execute while loop until the user guess matches the actual number of files in the directory
while [[ $guess -ne $nfiles ]]
do 
	# Call the checkguess function to compare the guess to the actual number of files
	checkguess
done


