CLASS=vutinfth
SOURCE=thesis


all: doc class thesis

doc:
	pdflatex $(CLASS).dtx
	pdflatex $(CLASS).dtx
	makeindex -s gglo.ist -o $(CLASS).gls $(CLASS).glo
	makeindex -s gind.ist -o $(CLASS).ind $(CLASS).idx
	pdflatex $(CLASS).dtx
	pdflatex $(CLASS).dtx

class:
	pdflatex $(CLASS).ins

thesis:
	pdflatex $(SOURCE)
	bibtex   $(SOURCE)
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)
	makeindex -t $(SOURCE).glg -s $(SOURCE).ist -o $(SOURCE).gls $(SOURCE).glo
	makeindex -t $(SOURCE).alg -s $(SOURCE).ist -o $(SOURCE).acr $(SOURCE).acn
	makeindex -t $(SOURCE).ilg -o $(SOURCE).ind $(SOURCE).idx
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

.PHONY: clean
clean:
	rm -rf $(SOURCE).acn $(SOURCE).acr $(SOURCE).alg $(SOURCE).aux $(SOURCE).bbl $(SOURCE).blg $(SOURCE).glg $(SOURCE).glo $(SOURCE).gls $(SOURCE).glsdefs $(SOURCE).idx $(SOURCE).ilg $(SOURCE).ind $(SOURCE).ist $(SOURCE).loa $(SOURCE).lof $(SOURCE).log $(SOURCE).lot $(SOURCE).out $(SOURCE).pdf $(SOURCE).toc $(CLASS).aux $(CLASS).glo $(CLASS).gls $(CLASS).hd $(CLASS).idx $(CLASS).ilg $(CLASS).ind $(CLASS).log $(CLASS).out $(CLASS).toc
