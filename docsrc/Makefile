# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
github:
	@make html
	cp -a build/html/. ../

rady:
	@make html
	cp -a build/html/. ../
	rsync -aP build/html/ obm@192.168.4.80:/var/lib/sphinx/intro-QC

clean:
	@git rm -rf ../genindex.html  ../_images ../courses ../reports ../searchindex.js ../_static ../_downloads ../help ../index.html ../objects.inv ../search.html ../_sources

