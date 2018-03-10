all:readme

readme:guessinggame.sh
	echo "Project Name: Guessing Game" > README.md
	echo -n "Created on: " >> README.md		
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh|cut -f1 -d' ' >> README.md

clean:
	rm -f README.md
