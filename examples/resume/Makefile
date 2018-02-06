TEXFILE=resume
TEX=lualatex
BIB=bibtex


all: ${BIB} ${TEX}


${TEX}:
	$(TEX) ${TEXFILE} ;\


${BIB}:
	$(TEX) ${TEXFILE} && \
	$(BIB) ${TEXFILE} ;\


clean: 
	rm -f ${TEXFILE}.aux
	rm -f ${TEXFILE}.bbl
	rm -f ${TEXFILE}.blg
	rm -f ${TEXFILE}.log
	rm -f ${TEXFILE}.dvi
	rm -f ${TEXFILE}.cb
	rm -f ${TEXFILE}.out
	rm -f ${TEXFILE}.pdf
	rm -f missfont.log
