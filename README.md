uiofysmaster
============

LaTeX package that provides a front page and other snacks for master thesises at the Physics departement at the University of Oslo.

The whole shebang goes into

    /home/yourusername/texmf/tex/latex/uiofysmaster

Then your LaTeX documents should accept the uiofysmaster package. An example document is shown below:

```latex
\documentclass[twoside]{report}
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

\begin{center}
To Someone\\\vspace{12pt}
This is a dedication placeholder.
\end{center}

\tableofcontents
\clearpage
\listoffigures
\clearpage
\listoftables

\section{Acknowledgements}
I want to thank my advisor for advising me.

\chapter{The beginning is here}

Start your chapter by writing something smart. Then go get coffee.

\printbibliography

\end{document}
```
