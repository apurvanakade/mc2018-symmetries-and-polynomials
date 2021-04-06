all: clean
	latexmk -pdf --shell-escape --output-directory=output *.tex

clean:
	rm -rf tikz/* #deleting images generated by tikz
	find output -type f ! -iname "*.pdf" -delete #deleting auxiliary files generated by latex

