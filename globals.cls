%!TEX encoding = UTF-8 Unicode

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{globals}

\LoadClass{extarticle}

\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage[pdfusetitle]{hyperref}
\RequirePackage{amssymb}
\RequirePackage{titlesec}
\RequirePackage{parskip}
\RequirePackage{fontspec}
\RequirePackage{fontawesome}
\RequirePackage[document]{ragged2e}
\newfontfamily{\FA}{FontAwesome}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Globals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
% define colors
%
\definecolor{heading}{rgb}{0,0,0}             % black
\definecolor{subheading}{rgb}{0.2,0.2,0.2}    % black
\definecolor{primarytext}{rgb}{0.1,0.1,0.1}   % dark grey
\definecolor{secondarytext}{rgb}{0.3,0.3,0.3} % dark grey
\definecolor{muted}{rgb}{0.45,0.45,0.45}      % light grey
\definecolor{primary}{rgb}{0.25,0.37,0.56}    % dark blue
\definecolor{secondary}{rgb}{0.22,0.45,0.70}  % light blue
\definecolor{work}{HTML}{66c2a5}
\definecolor{school}{HTML}{fc8d62}
\definecolor{hobby}{HTML}{8da0cb}

\newcommand{\name}[2]{%
  \title{#1 #2}
  \section[#1 #2]{\color{subheading}{\Huge{#1}} \color{heading}{\Huge{#2}}}%
}

%
% define variables with font awesome icons
%
\newcommand{\email}[1]{%
  \href{mailto:#1}{#1} \faEnvelopeO%
}
\newcommand{\github}[1]{%
  \href{https://github.com/#1}{github.com/#1} \faGithub%
}
\newcommand{\gitlab}[1]{%
  \href{https://gitlab.com/#1}{gitlab.com/#1} \faGitlab%
}
\newcommand{\homepage}[1]{%
  \href{https://#1}{#1} \faGlobe%
}
\newcommand{\phone}[1]{%
  {#1} \faPhone%
}

%
% define shapes for skills box
%
\newcommand{\workdot}{\raisebox{-0.3ex}{\scalebox{1.9}{\color{work}{$\bullet$}}}}
\newcommand{\schooldot}{\hspace{0.05ex}\raisebox{0.05ex}{\scalebox{1.25}{\color{school}{$\blacktriangle$}}}}
\newcommand{\hobbydot}{\hspace{0.17ex}\raisebox{-0.0ex}{\scalebox{1.0}{\color{hobby}{$\blacksquare$}}}}
\newcommand{\specialstar}{\hspace{0.2ex}\raisebox{-0.08ex}{\scalebox{1.5}{$\ast$}}}

%
% rule fills
%
\newcommand{\raisedrulefill}[2][0ex]{\leaders\hbox{\rule[#1]{1pt}{#2}}\hfill}

%
% separators
%
\newcommand{\sectionsep}{%
  \vspace{1.5ex}%
}
\newcommand{\smallsectionsep}{%
  \vspace{0.5ex}%
}

%
% custom headers and subtitles
%
% usage: \employerandjobtitle{employer name}{job title}
\newcommand{\employerandjobtitle}[2]{%
  \subsection[#1]{\large\textcolor{heading}{#1} $|$ \textcolor{subheading}{#2}}%
}
\newcommand{\topic}[1]{%
  \subsection[#1]{\large\textcolor{heading}{#1}}%
}
% usage: \whenandwhere{start date}{end date}{location}
\newcommand{\whenandwhere}[3]{%
  \vspace{-.5ex}{\textcolor{muted}{\small #1 --- #2 $|$ #3}}\vspace{.5ex}%
}

%
% load files
%
% usage: \loadpublicationfile[style (default:abbrv)]{filename}
\newcommand{\loadpublicationfile}[2][abbrv]{%
  \let\titlecap\relax
  \ifthenelse{\isempty{#1}}{\bibliographystyle{abbrv}}{\bibliographystyle{#1}}
  \renewcommand\refname{\vspace{-.99cm}}
  \begin{flushleft}
  \vspace{1ex}\color{primarytext}
  \bibliography{#2}
  \nocite{*}
  \end{flushleft}
}
