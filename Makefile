all:
	latexmk ausarbeitung.tex

watch:
	$(MAKE) all
	while true; do \
		inotifywait -q -e modify *.tex *.bib ; \
		$(MAKE) all ; \
	done
