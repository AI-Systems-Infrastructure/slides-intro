all: main main-note

main:
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -usepretex='\def\hidenotes{}' -f main.tex

main-note:
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out/main-note" -f main.tex

clean:
	latexmk -C
	rm -r out/*
