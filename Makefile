%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips $<

%.pdf: %.tex
	pdflatex $<

all: report.pdf
