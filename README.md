uiofysmaster
============

LaTeX package that provides a front page and other snacks for master thesises at the Physics departement at the University of Oslo.

Just clone this project into

    /home/yourusername/texmf/tex/latex/

Then your LaTeX documents should accept the uiofysmaster package. An example document is shown below:

```latex
\documentclass[twoside,english]{uiofysmaster}
\usepackage{uiofysmaster}
\usepackage{biblatex}

\author{Svenn-Arne Dragly}
\title{\uppercase{The history of master thesises and other random gibberish}}
\date{June 2012}

\begin{document}

\maketitle

\begin{abstract}
This is an abstract text.
\end{abstract}

\begin{dedication}
  To someone
  \\\vspace{12pt}
  This is a dedication to my cat.
\end{dedication}

\begin{acknowledgements}
  I acknowledge my acknowledgements.
\end{acknowledgements}

\tableofcontents
\clearpage
\listoffigures
\clearpage
\listoftables

\chapter{The beginning is here}

Start your chapter by writing something smart. Then go get coffee.

\printbibliography

\end{document}
```
