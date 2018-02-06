%!TEX encoding = UTF-8 Unicode

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{resume}

\LoadClass{globals}

\usepackage{xifthen}
\usepackage{xparse}

\setlength{\parindent}{15pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% globally suppress page numbers
\pagestyle{empty}

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
  \section[#1]{\textcolor{primary}{\uppercase{#1} \raisedrulefill[0.5ex]{0.4ex}}}
  \vspace{-1ex}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headers for first and remaining page(s)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% usage: \makeheader[homepage][email][phone][github][gitlab]{first name}{last name}
% Specifying the first and last name is required. The remaining ones are parsed
% in the order they are available. To skip an optional variable, add empty
% square brackets.
\DeclareDocumentCommand{\makeheader}{m m o o o o o}{%
  \noindent
  \begin{minipage}[c]{0.49\textwidth}%
  \begin{flushleft}%
    \name{#1}{#2}
  \end{flushleft}%
  \end{minipage}\hfill%
  %
  \begin{minipage}[c]{0.49\textwidth}%
  \begin{flushright}
    \color{subheading}
    \IfNoValueF{#3}{\ifthenelse{\isempty{#3}}{}{\homepage{#3} \\}}
    \IfNoValueF{#4}{\ifthenelse{\isempty{#4}}{}{\email{#4} \\}}
    \IfNoValueF{#5}{\ifthenelse{\isempty{#5}}{}{\phone{#5} \\}}
    \IfNoValueF{#6}{\ifthenelse{\isempty{#6}}{}{\github{#6} \\}}
    \IfNoValueF{#7}{\ifthenelse{\isempty{#7}}{}{\gitlab{#7} \\}}
  \end{flushright}
  \end{minipage}
}
