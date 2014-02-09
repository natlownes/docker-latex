#!/usr/bin/env bash

cd /tmp

jobname=`uuidgen`

cat /dev/fd/0>/tmp/$jobname.latex

pdflatex --interaction=nonstopmode /tmp/$jobname.latex &>/dev/null
cat /tmp/$jobname.pdf
