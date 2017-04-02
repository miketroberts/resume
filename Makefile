CC=docker
CONTAINER=thomasweise/texlive
OUT_DIR=`pwd`/build

SRCS = $(shell find src/ -name '*.tex')

resume.pdf: $(SRCS)
	$(CC) run \
	  --rm \
    -w "/doc" \
	  -v `pwd`/src/:/doc/ \
		-t $(CONTAINER) \
		make
