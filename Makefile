PACKAGE=reqwyt

TEXMFBASE=$(shell kpsewhich -var TEXMFHOME)
INSTALL_DIR=$(TEXMFBASE)/tex/latex/base/$(PACKAGE)

CLS_FILES=essay.cls resume.cls globals.cls

ESSAY_DIR=examples/essay
RESUME_DIR=examples/resume

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
	cp -f $(CLS_FILES) $(INSTALL_DIR);

uninstall:
	if [ -d $(INSTALL_DIR) ]; then \
	  cd $(INSTALL_DIR); rm -f $(CLS_FILES); \
	  rmdir $(INSTALL_DIR); \
	fi
