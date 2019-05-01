SOURCE=poster

all: poster
.PHONY: poster clean

poster:
	pdflatex $(SOURCE)
	bibtex $(SOURCE)
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

clean:
	rm -rf $(SOURCE).aux $(SOURCE).log $(SOURCE).nav $(SOURCE).out $(SOURCE).pdf $(SOURCE).dvi $(SOURCE).snm $(SOURCE).toc $(SOURCE).bbl $(SOURCE).blg
