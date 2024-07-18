#Makefile for compiling the main.tex file
all: testLua.tex
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error testLua.tex
	biber testLua
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error testLua.tex
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error testLua.tex

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg