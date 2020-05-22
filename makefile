readme.md: guesssinggame.sh
	echo "# Tarea Calificada Bash-Make-Git-GitHub" > readme.md
	echo "- **Date and time:**" >> readme.md
	echo | date >> readme.md
	echo "- Number of lines in **guesssinggame.sh**" >> readme.md
	wc -l guesssinggame.sh | egrep -o "[0-9]+" >> readme.md
	cat readme.md
