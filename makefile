cat > makefile << 'EOF'
README.md: guessinggame.sh
	echo "# Projet Bash : Make, Git et GitHub" > README.md
	echo "" >> README.md
	echo "Date et heure de creation du README :" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Nombre de lignes dans guessinggame.sh :" >> README.md
	wc -l < guessinggame.sh >> README.md
EOF
