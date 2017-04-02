.PHONY: examples

CC = xelatex
RESUME_SRCS = $(shell find . -name '*.tex')

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=`pwd` $<

clean:
	rm -rf *.pdf
