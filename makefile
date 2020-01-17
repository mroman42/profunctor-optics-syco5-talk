all: slides.pdf

slides.pdf: slides.org optics.bib
	emacs slides.org --batch -u `id -un` --eval '(load user-init-file)' -f org-beamer-export-to-pdf

clean:
	rm slides.pdf
