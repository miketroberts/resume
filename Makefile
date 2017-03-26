
DOCKER=docker
CONTAINER=ivotron/texlive
OUT_DIR=`pwd`/build

$(OUT_DIR)/resume.pdf: resume.tex
	@mkdir -p $(OUT_DIR)
	$(DOCKER) run -v `pwd`/resume.tex:/root/resume.tex -v $(OUT_DIR):/root/out $(CONTAINER) pdflatex --output-directory=/root/out /root/resume.tex

.PHONY: clean

clean:
	rm -rf $(OUT_DIR)
