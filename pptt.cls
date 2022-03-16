\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pptt}[2021/11/30 v1.0 Presentation Template document class for jgsu-acm]

\LoadClass[10pt,aspectratio=169]{ctexbeamer}

\RequirePackage{indentfirst}
\RequirePackage{bookmark}
\RequirePackage{etoolbox}

% from https://tex.stackexchange.com/questions/17230/beamer-how-to-make-each-frame-appear-in-the-pdf-toc
\makeatletter
\let\nobookmarkbeamer@@frametitle\beamer@@frametitle
\apptocmd{\beamer@@frametitle}{
    \addtocontents{toc}{
        \protect\beamer@subsectionintoc{\the\c@section}{0}{#1}{\the\c@page}{\the\c@part}{\the\beamer@tocsectionnumber}
    }
    \bookmark[page=\the\c@page,level=3]{#1}
  }
\makeatother

\usetheme{Szeged}
\usecolortheme{spruce}
\usefonttheme[onlymath]{serif}

\setlength{\parindent}{2em}
