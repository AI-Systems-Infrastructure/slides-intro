all: main

main:
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f main.tex

clean:
	latexmk -C
	rm -r out/*
