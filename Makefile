# variables
TEXFILE = genesis-cg-doc
COMPILE = latexmk -shell-escape
RM = rm -rf

# rules
.PHONY : all clean

all : 
	$(COMPILE) $(TEXFILE)
clean :
	$(COMPILE) -C
	@$(RM) auto/ tex/auto/ tex/*.aux *.nav *.vrb *.snm _minted-cheatsheet
