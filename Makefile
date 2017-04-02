
CC=docker
CONTAINER=thomasweise/texlive
OUT_DIR=`pwd`/build


#		-v `pwd`/Awesome-CV/fontawesome.sty:/root/texmf/tex/fontawesome.sty \
#		-v `pwd`/Awesome-CV/fonts/FontAwesome.ttf:/root/texmf/fonts/truetype/FontAwesome.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-BoldItalic.ttf:/root/texmf/fonts/truetype/Roboto-BoldItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Bold.ttf:/root/texmf/fonts/truetype/Roboto-Bold.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Italic.ttf:/root/texmf/fonts/truetype/Roboto-Italic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-LightItalic.ttf:/root/texmf/fonts/truetype/Roboto-LightItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Light.ttf:/root/texmf/fonts/truetype/Roboto-Light.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-MediumItalic.ttf:/root/texmf/fonts/truetype/Roboto-MediumItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Medium.ttf:/root/texmf/fonts/truetype/Roboto-Medium.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Regular.ttf:/root/texmf/fonts/truetype/Roboto-Regular.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-ThinItalic.ttf:/root/texmf/fonts/truetype/Roboto-ThinItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Thin.ttf:/root/texmf/fonts/truetype/Roboto-Thin.ttf \


#		-v `pwd`/Awesome-CV/awesome-cv.cls:/root/awesome-cv.cls \
#		-v `pwd`/Awesome-CV/fontawesome.sty:/root/fontawesome.sty \
#		-v `pwd`/Awesome-CV/fonts/FontAwesome.ttf:/root/.fonts/FontAwesome.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-BoldItalic.ttf:/root/.fonts/Roboto-BoldItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Bold.ttf:/root/.fonts/Roboto-Bold.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Italic.ttf:/root/.fonts/Roboto-Italic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-LightItalic.ttf:/root/.fonts/Roboto-LightItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Light.ttf:/root/.fonts/Roboto-Light.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-MediumItalic.ttf:/root/.fonts/Roboto-MediumItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Medium.ttf:/root/.fonts/Roboto-Medium.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Regular.ttf:/root/.fonts/Roboto-Regular.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-ThinItalic.ttf:/root/.fonts/Roboto-ThinItalic.ttf \
#		-v `pwd`/Awesome-CV/fonts/Roboto-Thin.ttf:/root/.fonts/Roboto-Thin.ttf \
#		-v `pwd`/resume.tex:/root/resume.tex \
#		-v `pwd`/education.tex:/root/education.tex \
#		-v `pwd`/experience.tex:/root/experience.tex \
#		-v `pwd`/build.sh:/root/build.sh \

SRCS = $(shell find src/ -name '*.tex')


resume.pdf: $(SRCS)
	$(CC) run \
	  --rm \
    -w "/doc" \
	  -v `pwd`/src/:/doc/ \
		-t $(CONTAINER) \
		make
