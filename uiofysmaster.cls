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

\def\degreename{Master of Science}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\def\degreenameno{Master i Fysikk}
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
\input{commands}

% Page style commands
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{%
  \clearpage
  {\pagestyle{empty}\origdoublepage}%
}

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
  \thispagestyle{empty}
  \clearemptydoublepage
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
  \thispagestyle{empty}
  \clearemptydoublepage
}
%----------------------------------------------------------------------------------------
%       ACKNOWLEDGEMENTS PAGE DESIGN
%----------------------------------------------------------------------------------------

\newenvironment{acknowledgements}
{
  \thispagestyle{empty}
  \begin{center}
    {\huge{\textbf{Acknowledgements}} \par}
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \thispagestyle{empty}
  \clearemptydoublepage
}

%----------------------------------------------------------------------------------------
%       FRONT PAGE DESIGN
%----------------------------------------------------------------------------------------

\RequirePackage{iftex}
\RequirePackage{graphicx}
\renewcommand{\maketitle}{
\pagenumbering{roman}
\thispagestyle{empty}
\begin{center}        % Sentrerer teksten
  % Tittel
  \ \\
  \vspace{10mm}          % Vertikalt mellomrom
  \LARGE
  \textsc{\@title} \\
  \small
  \vspace{10mm}
  {by} \\
  \vspace{5mm}
  % Forfatter
  \large
  {\@author} \\
  \vspace{25mm}
  \Large
%   {\bf{\textsl{THESIS}}} \\
  {\textsc{Thesis}} \\
%   \textsl{for the degree of} \\
  {\small for the degree of} \\
  \vspace{2mm}
  
%   {\bf{\textsl{\degreename}}} \\
  {\textsc{\degreename}} \\
  \vspace{15mm}
%   {\large \textsl {(\degreenameno)}}\\
%   \vspace{5m}
%   \ifXeTeX
    \centerline{\includegraphics[width=5cm,height=5cm]{figures/apollonseglet/Apollonseglet/UiO_Segl_cmyk.pdf}}
%   \else
%     \centerline{\includegraphics[width=5cm,height=5cm]{figures/apollonseglet/Apollonseglet/UiO_Segl_cmyk.eps}}
%   \fi
  \vspace{15mm}
  % \textsl{Avdeling for mekanikk, Matematisk institutt} \\
%   \textsl{\facultyname} \\
  \large
  \facultyname \\
%   \textsl{\universityname} \\
  \universityname \\
  % Maaned, aar
  \vspace{5mm}
  % \vspace{10mm}
  \normalsize
%   \textsl{\@date} \\
  \@date \\
  \vspace{4mm}
  \normalsize
  % \textsl{Mechanics Division, Department of Mathematics} \\
%   \textsl{\facultynameno} \\
%   \textsl{\universitynameno} \\
\end{center}
\clearemptydoublepage
}

\makeatletter
\def\pagenumberingnoreset#1{%
  \gdef\thepage{\csname @#1\endcsname \c@page}}
\makeatother
\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{
{
  \pagenumberingnoreset{roman}
  \pagestyle{tableofcontents}
%   \thispagestyle{onlypagenum}
  \oldtableofcontents
  \clearpage
}
\pagenumbering{arabic}
}

% \input{listings}
