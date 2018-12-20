all: README.md

README.md:
	touch README.md
	echo "Project: guessing game" > README.md
	date | cat >> README.md
	cat guessinggame.sh | wc -l >> README.md
