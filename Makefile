mk = latexmk -xelatex

ifeq ($(OS),Windows_NT)
    rm = del
else
    rm = rm
endif

.PHONY: document clean

document: document.tex
	$(mk) $^

clean:
	latexmk -C && $(rm) document.nav && $(rm) document.snm
