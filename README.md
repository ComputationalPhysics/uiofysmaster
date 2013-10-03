uiofysmaster
============

LaTeX package that provides a front page and other snacks for master thesises at the Physics departement at the University of Oslo.

Usage
-----

Just clone this project into

    /home/yourusername/texmf/tex/latex/

If the folder does not exist, you need to create it first. Now your LaTeX documents should accept the uiofysmaster package. An example document is shown below:

master-thesis.tex:
```latex
\documentclass[twoside,english]{uiofysmaster}

%\bibliography{references}

\author{Svenn-Arne Dragly}
\title{The history of master thesises and other random gibberish}
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

\chapter{The beginning is here}

Start your chapter by writing something smart. Then go get coffee.

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
\title{\uppercase{The history of master thesises and other random gibberish}}
\date{June 2012}

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

Adding a better font for your listings environment
--------------------------------------------------

While we have at least added a few improvements to the default setup of the listings environment already (such as frame and background), you might want to add an even prettier font, such as Droid Sans Mono. 
If you are using Ubuntu you will need to install the package fonts-droid first:
```bash
sudo apt-get install fonts-droid
```
We wanted to include this automatically in the package, but due to some initial troubles with the inclusion of an external font, we dropped it. If you should want it, however, just add this to the preamble (before \begin{document}) of your master-thesis.tex:

```latex
...
\usepackage{fontspec}
\newfontfamily\listingsfont[Scale=0.85]{Droid Sans Mono}
\lstset {
    basicstyle=\footnotesize\listingsfont,
    keywordstyle=\color{listingskeywordcolor}\footnotesize\listingsfont,
    stringstyle=\color{listingsstringcolor}\footnotesize\listingsfont,
    commentstyle=\color{listingscommentcolor}\footnotesize\listingsfont,
    numberstyle=\color{listingsnumbercolor}\footnotesize\listingsfont,
    identifierstyle=\footnotesize\listingsfont,
}
...
```
This will set the font to Droid Sans Mono while keeping the default color settings that we've set up in the package.

