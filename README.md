# TensorTex

===========================================================
## How it is structured 

- lualib.tex : contains all function fo tikz for drawing something with matrix or tensor.
- example : folder that contains a file with all example of method existing in lualib.tex (to show how to use them)

Tips : function with 'option' parameter let you to manage lot of things in the function be carefull.
If you see some standard value not interesting for your case you can modify it in lualib.tex file

## How to compile the main.tex
You need to add the following command before the 'begin document' in you main.tex :

```... \input{lualib.tex} ... \begin{document} ...```

### Easy way
I create a makefile to compile the project and generate the pdf :

1) ```home:~/TensorTex$ make clean``` (not mandatory, but recommended)
2) ```home:~/TensorTex$ make```

**WARNING :**  If the core file is not `main.tex` replace the name in the makefile!

### Standard method (if makefile don't work)
Because I use luacode, we need to have Lualatex compiler to do the following recipe :

1) ```home:~/TensorTex$ lualatex main.tex```
2) ```home:~/TensorTex$ biber main.tex```
3) ```home:~/TensorTex$ lualatex main.tex```
4) ```home:~/TensorTex$ lualatex main.tex```

=============================================================

## MaJ : (jj/mm/aa)