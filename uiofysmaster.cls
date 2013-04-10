%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% UiO Physics Master Thesis Template
%
% Created by Milad Hobbi Mobarhan, Sigve Bøe Skattum and Svenn-Arne Dragly
% Some parts are inspired by a template from www.latextemplates.com, originally created by
% Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%
% Licensed as CC Attribution-SA (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{uiofysmaster}
              [2012/08/22 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{12pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\input{packages.tex}

\def\degreename{\uppercase{Master of Science}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\def\degreenameno{\uppercase{Master i Fysikk}}
\newcommand*{\degreeno}[1]{\def\degreenameno{#1}}
\def\universityname{University of Oslo}
\newcommand*{\university}[1]{\def\universityname{#1}}
\def\universitynameno{Universitetet i Oslo}
\newcommand*{\universityno}[1]{\def\universitynameno{#1}}
\def\facultyname{Faculty of Mathematics and Natural Sciences}
\newcommand*{\faculty}[1]{\def\facultyname{#1}}
\def\facultynameno{Det matematisk- naturvitenskapelige fakultet}
\newcommand*{\facultyno}[1]{\def\facultynameno{#1}}

%---------------------------------------
%           USEFUL COMMANDS
%---------------------------------------

\newtheoremstyle{uiotheoremstyle} % name
    {\topsep}                    % Space above
    {\topsep}                    % Space below
    {\itshape}                   % Body font
    {}                           % Indent amount
    {\scshape}                   % Theorem head font
    {.}                          % Punctuation after theorem head
    {.5em}                       % Space after theorem head
    {}  % Theorem head spec (can be left empty, meaning ‘normal’)

\theoremstyle{uiotheoremstyle}
\newtheorem{theorem}{Theorem}
\renewenvironment{proof}{\noindent{\scshape Proof}.}{\qed}
\renewcommand{\vec}[1]{\mathbf{#1}}
% BEGIN COMMANDS FROM LATEX FOR PHYSICISTS
% http://www.dfcd.net/articles/latex/latex.html
\newcommand{\ket}[1]{\left| #1 \right>} % for Dirac bras
\newcommand{\bra}[1]{\left< #1 \right|} % for Dirac kets
\newcommand{\braket}[2]{\left< #1 \vphantom{#2} \right|
 \left. #2 \vphantom{#1} \right>} % for Dirac brackets
% END COMMANDS FROM


%----------------------------------------------------------------------------------------
%       ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------

\newenvironment{abstract}
{
  \thispagestyle{empty}
  \begin{center}
    {\huge{\textbf{Abstract}} \par}
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
%----------------------------------------------------------------------------------------
%       DEDICATION PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{dedication}
{
  \thispagestyle{empty}
  \begin{center}
}
{
  \end{center}
  \vfil\vfil\vfil\null
  \cleardoublepage
}
%----------------------------------------------------------------------------------------
%       ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------

\newenvironment{acknowledgements}
{
  \thispagestyle{empty}
  {\huge{\textbf{Acknowledgements}} \par}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}

%----------------------------------------------------------------------------------------
%       FRONT PAGE DESIGN
%----------------------------------------------------------------------------------------
\RequirePackage{graphicx}
\renewcommand{\maketitle}{
\thispagestyle{empty}
\begin{center}        % Sentrerer teksten
  % Tittel
  \vspace{5mm}          % Vertikalt mellomrom
  \LARGE
  \textbf{\@title} \\
  \Large
  \vspace{5mm}
  \textbf{by} \\
  \vspace{5mm}
  % Forfatter
  \large
  \textbf{\@author} \\
  \vspace{25mm}
  \Large
  {\bf{\textsl{THESIS}}} \\
  \textsl{for the degree of} \\
  \vspace{2mm}
  
  {\bf{\textsl{\degreename}}} \\
  \vspace{5mm}
  {\large \textsl {(\degreenameno)}}\\
  \vspace{10mm}
  \centerline{\includegraphics[width=4cm,height=4cm]{figures/uiologo}}
  \vspace{5mm}
  % \textsl{Avdeling for mekanikk, Matematisk institutt} \\
  \textsl{\facultyname} \\
  \textsl{\universityname} \\
  % Maaned, aar
  \vspace{5mm}
  % \vspace{10mm}
  \large
  \textsl{\@date} \\
  \vspace{4mm}
  \normalsize
  % \textsl{Mechanics Division, Department of Mathematics} \\
  \textsl{\facultynameno} \\
  \textsl{\universitynameno} \\
\end{center}
\cleardoublepage
}

\input{listings}