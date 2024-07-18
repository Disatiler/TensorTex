#Makefile for compiling the main.tex file
all: main.tex
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
	biber main
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg