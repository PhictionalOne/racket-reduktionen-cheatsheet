# Set the main LaTeX file
MAIN_TEX = main.tex

# Set the output directory
OUTPUT_DIR = build

# Set the final PDF output file
PDF_OUTPUT = Reduktionen_Cheatsheet.pdf

# Last revisions date
COMMIT_DATE != git log -s --format=%ci -- $(MAIN_TEX) settings.tex \
	| LC_TIME=de_DE.utf8 xargs -I{} date -d {} '+%d. %B %Y'

# Compile command
LATEX_CMD = xelatex --shell-escape -output-directory=$(OUTPUT_DIR) main_temp.tex

# Build the PDF
all: $(PDF_OUTPUT)

$(PDF_OUTPUT): $(MAIN_TEX) settings.tex
	cp $(MAIN_TEX) main_temp.tex
	sed -i 's|27. Dezember 2022|$(COMMIT_DATE)|g' main_temp.tex
	mkdir -p $(OUTPUT_DIR)
	$(LATEX_CMD)
	$(LATEX_CMD)
	cp $(OUTPUT_DIR)/main_temp.pdf $(PDF_OUTPUT)
	rm main_temp.tex

clean:
	rm -rf $(OUTPUT_DIR)
	rm -f $(PDF_OUTPUT)

.PHONY: all clean
