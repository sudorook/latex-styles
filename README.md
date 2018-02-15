# Reqwyt LaTeX Style

LaTeX styles for writing a résumé or essay.


## Requirements

1. LuaLaTeX
2. BibTeX
3. Font Awesome

For Linux users, the requirements can likely be satisfied through your favorite
distribution's package repository.

Arch Linux:
```
sudo pacman -S texlive-bibtexextra texlive-core texlive-fontsextra
```

Debian:
```
sudo apt install texlive-base texlive-bibtex-extra texlive-fonts-extra texlive-luatex
```

I'm not familiar with how to best install texlive packages on macOS, Windows,
or other Linux distributions. Best of luck.

**NOTE:** Older (LTS) Linux distros may not have the Font Awesome files and
their LaTeX mappings available in their repos. To get the required files,
install the fontforge bitmap font editor and run:

```
git clone https://github.com/xdanaux/fontawesome-latex
cd fontawesome-latex
./generate_tex_bindings.py 4.6.3 # need to install 'fontforge' beforehand
cp FontAwesome.otf fontawesome.sty fontawesomesymbols-generic.tex \
  fontawesomesymbols-pdftex.tex fontawesomesymbols-xeluatex.tex \
  path/to/directory
```


## Installation

The makefile will install the LaTeX class (.cls) files in your local texmf
directory.

To install the class files in your texmf directory, run:
```
make install
```

To remove them, run:
```
make uninstall
```

Simply running `make` will build the samples in the example directory. `make`
does not need to be invoked before `make install`. They function independently.

Run `make clean` to clear out the build files.

**NOTE:** Running `sudo make install` as root will not install this globally.
It will only install the files in the local texmf path in /root.


## Extra

### Examples

To build the examples, run
```
make example
```

Look for resume.pdf and essay.pdf in their respective directories.

To clean out the build, run:
```
make clean
```

### Text encoding

All class files use utf-8 encodings, not the default latin1. To set the
encoding in a tex file, set the first line to:
```
%!TEX encoding = UTF-8 Unicode
```
