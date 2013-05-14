all:
	latexmk ausarbeitung.tex slides.tex

watch:
	$(MAKE) all
	while true; do \
		inotifywait -q -e modify *.tex *.bib ; \
		$(MAKE) all ; \
	done
