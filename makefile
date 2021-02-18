# makefile for Project: Bash, Make, Git, and GitHub
SHELL=/bin/bash

all: README.md

README.md: guessinggame.sh
	echo "Project Title: Bash, Make, Git, and GitHub Peer-Graded Assignment" > README.md
	echo -n "Current Date/Time: " >> README.md
	date "+%D %r" >> README.md
	echo -n "Number of Lines: " >> README.md
	cat guessinggame.sh | wc -l | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md

