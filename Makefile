# how to use:
# $ make all
.PHONY: clean

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.gz
	rm -f *.thm
	rm -f *.toc
	rm -f *.bak
	rm -f *.blg
	rm -f *.idx
	rm -f *.ind
	rm -f *.out
	rm -f *.bbl
	rm -f *.ilg
	rm -f *.loe
	rm -f *.lof
	rm -f *.lot
	rm -f *.glo
	rm -f *.idx
	rm -f *.gls
	rm -f *.hd


all:
	latex shuthesis.ins
	xelatex shuthesis.dtx
	makeindex -s gind.ist -o shuthesis.ind shuthesis.idx
	makeindex -s gglo.ist -o shuthesis.gls shuthesis.glo
	xelatex shuthesis.dtx
	xelatex shuthesis.dtx
	make clean

