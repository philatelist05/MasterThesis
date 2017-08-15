#!/bin/sh
# Copyright (C) 2014-2017 by Thomas Auzinger <thomas@auzinger.name>

CLASS=vutinfth

# Build vutinfth documentation
pdflatex $CLASS.dtx
pdflatex $CLASS.dtx
makeindex -s gglo.ist -o $CLASS.gls $CLASS.glo
makeindex -s gind.ist -o $CLASS.ind $CLASS.idx
pdflatex $CLASS.dtx
pdflatex $CLASS.dtx

# Build the vutinfth class file
pdflatex $CLASS.ins

echo
echo
echo Class file compiled.
