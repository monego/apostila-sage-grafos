.DEFAULT_GOAL := html

MAIN=sage-grafos.xml
MBXDIR=mathbook/
XSLPROC=xsltproc
XSLOPT=--xinclude

all: html jupyter latex smc

html:
	$(XSLPROC) $(XSLOPT) -o build/html/sage-grafos.html ${addsuffix xsl/pretext-html.xsl, ${MBXDIR}} $(MAIN)

jupyter:
	$(XSLPROC) $(XSLOPT) -o build/jupyter/ ${addsuffix xsl/pretext-jupyter.xsl, ${MBXDIR}} $(MAIN)

latex:
	$(XSLPROC) $(XSLOPT) -o build/latex/sage-grafos.tex ${addsuffix xsl/pretext-latex.xsl, ${MBXDIR}} $(MAIN)

smc:
	$(XSLPROC) $(XSLOPT) -o build/smc/ ${addsuffix xsl/pretext-smc.xsl, ${MBXDIR}} $(MAIN)

init:
