%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	Plantilla para Memorias y Tesis, UTFSM, Chile
%	=============================================
%
% Autor:
%       Jaime C. Rubin-de-Celis <jaime@rubin-de-celis.com>
%
% Fecha:
%       $Date: 2023-01-11 01:05:21 -0300$
%
% Versión:
%       2.0
%
% Licencia:
%       Copyright (c) 2012-2023, Jaime C. Rubin-de-Celis
%       The MIT License
%
% Nota:
%       Las imágenes son propiedad intelectual de la UTFSM.
%
% Uso:
%       Ver archivo adjunto README.md.
%       Si todo lo demás falla, recuerde "RTFM".
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis_utfsm}[10/01/2023 UTFSM Thesis class]
\LoadClass[oneside]{book}

%---------------------------------------------------------------------------
%%% LANGUAGE: Spanish
\RequirePackage[spanish,es-tabla]{babel}
\addto\shorthandsspanish{\spanishdeactivate{~<>}}
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
%%% BIBLIOGRAPHY
% Using biber/biblatex instead of (old) natbib/bibtex.
\RequirePackage[
    backend=biber,
    style=authoryear-icomp,
    sortlocale=es_ES,       % Spanish
    natbib=true,            % Natbib backward compatibility
    url=true,               % Allow URLs
    doi=true,               % Allow DOI autoreference
    eprint=false
]{biblatex}
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
%%% LINE SPACING
\RequirePackage{setspace}
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
%%% TABLE OF CONTENTS
\RequirePackage[nottoc,notlof,notlot]{tocbibind}
%---------------------------------------------------------------------------


\RequirePackage[T1]{fontenc}    % Important!
\RequirePackage{microtype}      % Subliminal refinements
\RequirePackage{titlesec}       % Chapter/Section Titles
\RequirePackage{listings}       % Better looking listings
\RequirePackage{booktabs}       % for much better looking tables
\RequirePackage{tabularx}       % for much better looking tables
                                % (might conflict with previous!)
\RequirePackage{multirow}       % for multirow tables
\RequirePackage{array}          % for better arrays (eg matrices) in maths
\RequirePackage{float}          % for floating figures
\RequirePackage{textcomp}
\RequirePackage{endnotes}       % notes at the end of document
\RequirePackage{paralist}       % very flexible & customizable lists
\RequirePackage{framed}         % create framed boxes
\RequirePackage{fancybox}       % fancy framed boxes
\RequirePackage{verbatim}       % adds environment for commenting out blocks
\RequirePackage{fancyvrb}       % fancy verbatim
\RequirePackage[parfill]{parskip}   % Frensh indentation
\RequirePackage{wrapfig}        % flooating Figures and Tables
\RequirePackage{xcolor}         % custom colors
\RequirePackage{graphicx}       % graphics library
\RequirePackage{subcaption}     % include more than one captioned figure/table in a single float
                                % Important!: subfig is incompatible with subcaption
\RequirePackage{type1cm}        % Watermarks (TODO: will change in next version)
\RequirePackage{eso-pic}        % Watermarks
\RequirePackage{rotating}       % Table rotation
\RequirePackage{fancyhdr}       % Fancy Headers and Footers
\RequirePackage{tikz}           % to hard to explain ;-)
                                % Important: TIKZ does not play nice when used
                                % with multi-language (babel) configuration.
\usetikzlibrary{arrows,positioning,fit,shapes,calc,backgrounds}
\usetikzlibrary{decorations.pathreplacing}
\RequirePackage{chngcntr}       % Footnotes by chapter


%---------------------------------------------------------------------------
%%% TABLA DE CONTENIDOS (TDC)

% Control del nivel de profundidad de la Tabla de Contenidos (TDC).
\setcounter{tocdepth}{3}        % {3} => incluirá subsubseccions en la TDC.

% Control de la numeración de secciones, subsecciones y subsubsecciones
\setcounter{secnumdepth}{3}     % {3} => numerará las subsubsecciones.

\setlength{\parindent}{30pt}    % Tamaño de la sangría francesa
%---------------------------------------------------------------------------


%---------------------------------------------------------------------------
%%% PDF OPTIONS (HYPERREFERENCES)
\RequirePackage[%
    colorlinks=true,
    linkcolor=black,
    urlcolor=blue,
    citecolor=blue,
    breaklinks=true,
    pdfpagelabels
]{hyperref}	% for colored links (urls and table of contents)
%---------------------------------------------------------------------------


%---------------------------------------------------------------------------
%%% MATH
% Use with caution; might conflict with other packages
\RequirePackage{amssymb}
\RequirePackage{amsmath}
%---------------------------------------------------------------------------


\newcommand{\insertWatermark}[1]{%
    \AddToShipoutPicture{%
        \setlength{\@tempdimb}{.305\paperwidth}%
        \setlength{\@tempdimc}{.61\paperheight}%
        \setlength{\unitlength}{1pt}%
        \put(\strip@pt\@tempdimb,\strip@pt\@tempdimc){%
            %\makebox(0,0){\rotatebox{45}{\textcolor[gray]{0.9}%
            %{\fontsize{6cm}{6cm}\selectfont{DRAFT}}}}%
            \includegraphics{#1}
        }%
    }
}

\newcommand{\thesisTitle}[1]{
    \vspace{15mm}
    \begin{spacing}{1.5}
        \textbf{\large #1}
    \end{spacing}
    \vspace{15mm}
}

\newcommand{\insertFile}[2][empty]{%
    \thispagestyle{#1}
    \input{includes/#2}\newpage
    \thispagestyle{#1}\cleardoublepage
}

\newcommand{\dedicatoria}[1]{%
    \newpage\thispagestyle{empty}		% Hide Header, Footer, Page Number
    \vspace*{4cm}
    \hfill
    \begin{minipage}[t]{0.45\linewidth}
        #1	% Archivo dedicatoria.tex
    \end{minipage}
    \vfill
    \newpage\thispagestyle{empty}\cleardoublepage
}

\newcommand{\inlinecode}[1]{%
    \colorbox{gray!5}{%
        \lstinline[basicstyle=\ttfamily \color{black!100} \small ]|#1|
    }
}

\newcommand{\hsp}[1][20]{\hspace{#1pt}} % Horizontal separator
