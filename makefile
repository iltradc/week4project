# makefile for Project: Bash, Make, Git, and GitHub
SHELL=/bin/bash

all: README.md

README.md: guessinggame.sh
	echo "Project Title: week4project " > README.md
	echo "  " >> README.md
	echo -n "Make date/time: " >> README.md
	date "+%D %r" >> README.md
	echo "  " >> README.md
	echo -n "Number of Lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md

