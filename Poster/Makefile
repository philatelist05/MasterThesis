SOURCE=poster

all: poster
.PHONY: poster clean

poster:
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

clean:
	rm -rf $(SOURCE).aux $(SOURCE).log $(SOURCE).nav $(SOURCE).out $(SOURCE).pdf $(SOURCE).snm $(SOURCE).toc
