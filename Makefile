%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips $<

%.pdf: %.tex
	pdflatex $<

all: report.pdf

convert:
	cd Pictures; for d in *.jpg; do convert -resize 1024 -quality 90 $$d $$d.conv && mv $$d $$d.orig && mv $$d.conv $$d; done
