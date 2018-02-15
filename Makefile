PACKAGE=reqwyt

TEXMFBASE=$(shell kpsewhich -var TEXMFHOME)
INSTALL_DIR=$(TEXMFBASE)/tex/latex/base/$(PACKAGE)

ESSAY_DIR=examples/essay
RESUME_DIR=examples/resume
FILES=essay.cls resume.cls globals.cls

all:
	@echo Nothing to do here.

example:
	$(MAKE) -C $(ESSAY_DIR)
	$(MAKE) -C $(RESUME_DIR)

clean:
	$(MAKE) -C $(ESSAY_DIR) $@
	$(MAKE) -C $(RESUME_DIR) $@

install:
	mkdir -p $(INSTALL_DIR);
	cp -f $(FILES) $(INSTALL_DIR);

uninstall:
	if [ -d $(INSTALL_DIR) ]; then \
	  cd $(INSTALL_DIR); rm -f $(FILES); \
	  rmdir $(INSTALL_DIR); \
	fi
