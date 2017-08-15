#!/bin/sh
# Copyright (C) 2014-2017 by Thomas Auzinger <thomas@auzinger.name>

SOURCE=proposal

# Build the thesis document
pdflatex $SOURCE
bibtex   $SOURCE
pdflatex $SOURCE
pdflatex $SOURCE
makeindex -t $SOURCE.glg -s $SOURCE.ist -o $SOURCE.gls $SOURCE.glo
makeindex -t $SOURCE.alg -s $SOURCE.ist -o $SOURCE.acr $SOURCE.acn
makeindex -t $SOURCE.ilg -o $SOURCE.ind $SOURCE.idx
pdflatex $SOURCE
pdflatex $SOURCE

echo
echo
echo Proposal document compiled.
