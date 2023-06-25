SPELLERROR_OUT := spellings/spellerrors

pdf:
	latexmk -pdf main.tex
.PHONY: pdf

spellcheck:
	hunspell -d en_GB -l -t -p spellings/extra_words $(shell find . -type f -name "*.tex") > $(SPELLERROR_OUT)
.PHONY: spellcheck

clean:
	latexmk -c
	$(RM) $(SPELLERROR_OUT)
.PHONY: clean
