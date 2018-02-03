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

\newcommand{\setfirstheader}[3]{%
  \fancypagestyle{firstpage}{%
    \fancyhf{}% Clear all headers/footers
    \fancyhead[L]{\sffamily{\color{heading}{\Huge{#1}}}}
    \fancyhead[R]{\sffamily{\color{subheading}{%
      \large{#2}} \\
      {#3}
    }}
  }
  \thispagestyle{firstpage}
}

\newcommand{\setbigheader}[2]{%
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
  \renewcommand{\headrulewidth}{2pt}
  \patchcmd{\headrule}{\hrule}{\color{primary}\hrule}{}{}
}
