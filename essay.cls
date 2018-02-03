%!TEX encoding = UTF-8 Unicode

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{essay}

\LoadClass{globals}

\usepackage{fancyhdr}
\usepackage{etoolbox}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{headerstyle}%
{
  \color{heading}
  \urlstyle{same}
  \titleformat{\section}
    {\Huge}
    {}{0em}
    {}
}
{
  \vspace{-6ex}
}

\newenvironment{essaystyle}%
{
  \color{primarytext}
  \titleformat{\section}
    {\Large}
    {}{0em}
    {}
  [\vspace{-1ex}]

  \titleformat{\subsection}
    {\color{heading}\large}
    {}{0em}
    {}
  [\vspace{-1ex}]
}
{
  \vspace{2ex}
}

\newcommand{\essaysection}[1]{%
  \section[#1]{\textcolor{primary}{\uppercase{#1} \raisedrulefill[0.5ex]{2pt}}}
  \vspace{-1ex}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headers for first and remaining page(s)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Using this command causes vertical spacing inconsistencies with the first
% page and the remaining pages. The large font sizes and multiple lines cause
% this fancyhdr to take more vertical space, and for some reason this causes
% later fancyhdrs to get shifted down.
\newcommand{\setsmallheader}[3]{%
  \fancypagestyle{firstpage}{%
    \fancyhf{}% Clear all headers/footers
    \fancyhead[L]{\sffamily{\color{heading}{\Huge{#1}}}}
    \fancyhead[R]{\sffamily{\color{subheading}{%
      \large{#2}} \\
      {#3}
    }}
  }
  \thispagestyle{firstpage}
  \renewcommand{\headrulewidth}{2pt}
  \renewcommand{\headrule}{\textcolor{primary}{\raisedrulefill[0.0ex]{0.4ex}}}
}

\newcommand{\setbigheader}[3]{%
  \title{#1}
  \author{#2}
  \date{}
  \maketitle
  \thispagestyle{empty}
}

\newcommand{\setbodyheader}[2]{%
  \fancyhf{}% Clear all headers/footers
  \fancyhead[L]{\sffamily{#1}}
  \fancyhead[C]{\sffamily{\thepage}}
  \fancyhead[R]{\sffamily{#2}}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0.4ex}
  \patchcmd{\headrule}{\hrule}{\color{primary}\hrule}{}{}
}
