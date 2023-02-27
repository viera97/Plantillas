%%
%% This is file `mawrld-l.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% mawrld-l.dtx 
%% 
%% This is a generated file.
%% 
%% Copyright 2006, 2013 American Mathematical Society.
%% 
%% American Mathematical Society
%% Technical Support
%% Publications Technical Group
%% 201 Charles Street
%% Providence, RI 02904
%% USA
%% tel: (401) 455-4080
%%      (800) 321-4267 (USA and Canada only)
%% fax: (401) 331-3842
%% email: tech-support@ams.org
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is the American Mathematical
%% Society.
%% 
%% ========================================================================
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mawrld-l}[2013/07/01 v1.02 MAWRLD Author Class]
\providecommand\@classname{mawrld-l}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsbook}}
\ProcessOptions\relax
\LoadClass[11pt]{amsbook}[1996/10/24]
\AtBeginDocument{%
  \textheight=604pt
  \calclayout
  \parskip=0pt plus.1pt
}
\def\ps@headings{\ps@empty
  \def\@evenhead{%
    \setTrue{runhead}%
    \normalfont\small
    \rlap{\thepage}\hfil
    \def\thanks{\protect\thanks@warning}%
    \leftmark{}{}}%
  \def\@oddhead{%
    \setTrue{runhead}%
    \normalfont\small
    \def\thanks{\protect\thanks@warning}%
    \rightmark{}{}\hfil \llap{\thepage}}%
  \let\@mkboth\markboth
  \def\partmark{\@secmark\markboth\partrunhead\partname}%
  \def\chaptermark{%
    \@secmark\markboth\chapterrunhead{}}%
  \def\sectionmark{%
    \@secmark\markright\sectionrunhead\sectionname}%
}
\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >-2\relax \refstepcounter{part}%
    \addcontentsline{toc}{part}{\partname\ \thepart.
        \protect\enspace\protect\noindent#1}%
  \else
    \addcontentsline{toc}{part}{#1}\fi
  \begingroup\raggedright
  \ifnum \c@secnumdepth >-2\relax
       {\fontsize{\@xxpt}{24}\bfseries
         \partname\ \thepart} \vskip 20\p@ \fi
  \fontsize{\@xxvpt}{30}\bfseries
      #1\vfil\vfil
  \endgroup
  \newpage\thispagestyle{empty}}
\def\@spart#1{%
  \begingroup \c@secnumdepth=-2 \@part[#1]{#1}\endgroup
}
\def\chapter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{plain}\global\@topnum\z@
  \@afterindentfalse \secdef\@chapter\@schapter}
\def\chapter@number{%
  \ifnum\c@secnumdepth>\m@ne
    \vspace{5pc}
    \huge\normalfont\bfseries
    \chaptername\enspace\thechapter
  \fi
}
\newif\if@index  \@indexfalse
\def\@makechapterhead#1{\global\topskip 8.5pc\relax
  \begingroup
    \parindent\z@\raggedright
    \vbox to\topskip{%
      \chapter@number
      \vss
    }\penalty\@M
    \Huge\bfseries #1\par
  \endgroup
  \if@index
    \ifx\@empty\indexintro
      \vspace{3pc}%
    \else
      \vspace{3pc}%
      \begingroup \small
        \parbox[t]{27pc}{\leftskip3pc\normalfont\indexintro\par}%
      \endgroup
      \vspace{2.5pc}%
    \fi
  \else
    \vspace{3pc}%
  \fi
  \@afterheading
}
\def\@makeschapterhead#1{\begingroup
  \c@secnumdepth\m@ne \@makechapterhead{#1}%
  \endgroup
}
\AtBeginDocument{%
  \def\indexchap#1{%
    \twocolumn[%
      \c@secnumdepth\m@ne
      \@indextrue
      \@makechapterhead{#1}%
      \vspace{-7pc}]%
  }%
  \let\indexintro\@empty
}
\def\section{\@startsection{section}{1}%
  \z@{-1.5\linespacing\@plus-.3\linespacing\@minus.2\linespacing}%
  {.5\linespacing}{\normalfont\large\bfseries}}
\def\subsection{\@startsection{subsection}{2}%
  \z@{-1.2\linespacing\@plus-.3\linespacing\@minus.2\linespacing}%
  {.25\linespacing}{\normalfont\normalsize\bfseries}}
\def\subsubsection{\@startsection{subsubsection}{3}%
  \z@{-1.0\linespacing\@plus-.3\linespacing\@minus.2\linespacing}%
  {.25\linespacing}{\normalfont\normalsize\bfseries}}
\def\@thm#1#2#3{%
  \ifhmode\unskip\unskip\par\fi
  \normalfont
  \trivlist
  \let\thmheadnl\relax
  \let\thm@swap\@gobble
  \let\thm@indent\noindent % don't indent
  \thm@headfont{\bfseries}% heading font bold
  \thm@notefont{\bfseries}%
  \thm@headpunct{.}% add period after heading
  \thm@headsep 5\p@ plus\p@ minus\p@\relax
  \thm@space@setup
  #1% style overrides
  \@topsep \thm@preskip              % used by thm head
  \@topsepadd \thm@postskip          % used by \@endparenv
  \def\@tempa{#2}\ifx\@empty\@tempa
    \def\@tempa{\@oparg{\@begintheorem{#3}{}}[]}%
  \else
    \refstepcounter{#2}%
    \def\@tempa{\@oparg{\@begintheorem{#3}{\csname the#2\endcsname}}[]}%
  \fi
  \@tempa
}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \itemindent\z@
  \item[\hskip\labelsep\bfseries
    #1\@addpunct{.}]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
\pagestyle{headings}
\normalsize
\endinput %
\endinput
%%
%% End of file `mawrld-l.cls'.
