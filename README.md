uiofysmaster
============

LaTeX package that provides a front page and other snacks for master thesises at the Physics departement at the University of Oslo.

Usage
-----

Just clone this project into

    /home/yourusername/texmf/tex/latex/

Then your LaTeX documents should accept the uiofysmaster package. An example document is shown below:

master-thesis.tex:
```latex
\documentclass[twoside,english]{uiofysmaster}
\usepackage{biblatex}

%\bibliography{references}

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

%\printbibliography

\end{document}
```

Centering the front page
------------------------
By default, the maketitle command will generate the front page, but it will not be properly centered, but offset like any other page. To get around this, the best solution is to create a separate document, name it front-page.tex and add the following to it:

front-page.tex:
```latex
\documentclass[twoside,english]{uiofysmaster}
\usepackage[a4paper,includeall,bindingoffset=0cm,margin=3cm,
            marginparsep=0cm,marginparwidth=0cm,top=3cm]{geometry}

\author{Svenn-Arne Dragly}
\title{\uppercase{Novel potentials for molecular dynamics from quantum Monte Carlo}}
\date{June 2014}

\begin{document}

\begin{titlepage}
\maketitle
\end{titlepage}

\end{document}
```

The generated PDF you get when compiling this will now center the front page correctly.

Now, in your master-thesis.tex file, replace \maketitle with the following:


```latex
...
\usepackage{pdfpages}
...
\begin{document}
\includepdf{front-page.pdf}
\cleardoublepage
...
```

This will load the PDF file front-page.pdf and use it as the front page instead.