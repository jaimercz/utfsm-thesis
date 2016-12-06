DOC = memoria.tex

all: pdf

pdf:
	rubber --pdf $(DOC)
clean:
	rubber --pdf --clean $(DOC)

.PHONY: all clean
