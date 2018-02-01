%!TEX encoding = UTF-8 Unicode

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{resume}

\LoadClass{globals}

\setlength{\parindent}{15pt}


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
  \vspace{-3ex}
}

\newenvironment{resumestyle}%
{
  \color{secondarytext}
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

\newcommand{\resumesection}[1]{%
  \section[#1]{\textcolor{primary}{\uppercase{#1} \raisedrulefill[0.5ex]{2pt}}}
  \vspace{-1ex}
}
