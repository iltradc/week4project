# makefile for Project: Bash, Make, Git, and GitHub

all: README.md

README.md: guessinggame.sh
	echo "Project Title: Bash, Make, Git, and GitHub Peer-Graded Assignment" > README.md
	echo "Current Date/Time: $(date "+%D %r")"
	echo "Number of Lines in guessinggame.sh: $(cat guessinggame.sh | wc -l)"
	
clean:
	rm README.md

