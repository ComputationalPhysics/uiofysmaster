uiofysmaster
============

LaTeX package that provides a front page and other snacks for master theses at the Physics departement at the University of Oslo.

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
\geometry{a4paper,includeall,bindingoffset=0cm,margin=3cm,
            marginparsep=0cm,marginparwidth=0cm,top=2cm}

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

Now, in your master-thesis.tex file, replace `\maketitle` with the following:


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

Using pdfpages to include a separate front-page PDF makes the page numbering of the first pages (the ones before the first chapter, that should be numbered i, ii, etc.) break. This can be fixed by for example including `\pagenumbering{roman}` before the `\includepdf{}`-command, as follows:

```latex
...
\usepackage{pdfpages}
...
\begin{document}
\pagenumbering{roman}
\includepdf{front-page.pdf}
\cleardoublepage
...
```

The numbering is automatically set to `\pagenumbering{arabic}` after the table of contents.

Adding a better font for your listings environment
--------------------------------------------------

Having a prettier font requires you to compile your document with XeLaTeX.

While we have at least added a few improvements to the default setup of the listings environment already (such as frame and background), you might want to add an even prettier font, such as Droid Sans Mono. 
If you are using Ubuntu you will need to install the package fonts-droid first:
```bash
sudo apt-get install fonts-droid
```
We wanted to include this automatically in the package, but because it there is no simple way to include an external font without having it installed on your system from before, we dropped it. If you should want it, however, just add this to the preamble (before `\begin{document}`) of your master-thesis.tex:

```latex
...
\usepackage{ifxetex}
\ifxetex
  \usepackage{fontspec}
  \newfontfamily\listingsfontfamily[Scale=0.85]{Droid Sans Mono}
  \renewcommand{\listingsfont}{\listingsfontfamily}
\fi
...
```
This will set the font to Droid Sans Mono while keeping the default color settings that we've set up in the package.

A short note about references
-----------------------------

**Equations**

The command `\eqref{}` works exactly like `\ref{}`, but it adds parantheses to a plain number.

**Figures and tables**

`\autoref{}` is a usefull command when refering to to figures and tables. The command creates a reference with additional text
corresponding to the target's type. For example, the command `\autoref{fig:myfigure}` would create a hyperlink to the 
`\label{fig:myfigure}` command, wherever it is. Assuming that this label is pointing to a figure, the hyperlink would
contain the text "Figure 1.1", or similar.

A few tips
----------

* Add some more space around equations

   These short latex commands after `\begin{document}` will do the task:
   ```latex
   % set space around equations
   \setlength{\belowdisplayskip}{12pt} \setlength{\belowdisplayshortskip}{12pt}
   \setlength{\abovedisplayskip}{12pt} \setlength{\abovedisplayshortskip}{12pt}
   ```

