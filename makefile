readme.md: guessinggame.sh
	echo "# Peer-graded assignment: Guessing Game" > readme.md
	echo >> readme.md
	echo "Created: " >> readme.md
	date >> readme.md
	echo >> readme.md
	echo "Number of lines in file: " >> readme.md
	cat guessinggame.sh | wc -l  >> readme.md
