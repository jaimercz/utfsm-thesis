%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	Clase (LateX class) para Memorias y Tesis, UTFSM, Chile
%	=============================================
%
% Autor:
%       Jaime C. Rubin-de-Celis <jaime@rubin-de-celis.com>
%
% Fecha:	
%       $Date: 2016-05-28 11:05:52 -0400 (Sat, 28 May 2016) $
%
% Versión:
%       1.0
%
% Licencia:
%       Copyright (c) 2012-2016, Jaime C. Rubin-de-Celis
%       The MIT Licence
%
% Nota:
%       Las imágenes son propiedad intelectual de la UTFSM.
%
% Uso:
%       Ver archivo adjunto README.md.
%       Si todo lo demás falla, recuerde "RFM".
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfsm_thesis}[6/6/2016 UTFSM Thesis class]
\LoadClass{book}

%---------------------------------------------------------------------------
%%% LANGUAGE: Spanish
\RequirePackage[spanish,es-tabla]{babel}
\addto\shorthandsspanish{\spanishdeactivate{~<>}}
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
%%% BIBLIOGRAPHY
\RequirePackage[longnamesfirst]{natbib}
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
%%% LINE SPACING
\RequirePackage{setspace}
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
%%% TABLE OF CONTENTS
\RequirePackage[nottoc,notlof,notlot]{tocbibind}
%---------------------------------------------------------------------------


\RequirePackage[T1]{fontenc}% Important!
\RequirePackage{geometry}
\RequirePackage{microtype}  % Subliminal refinements
\RequirePackage{titlesec}   % Chapter/Section Titles
\RequirePackage{listings}   % Better looking listings
\RequirePackage{booktabs}   % for much better looking tables
\RequirePackage{tabularx}   % for much better looking tables (might conflict with previous)
\RequirePackage{multirow}   % for multirow tables
\RequirePackage{array}      % for better arrays (eg matrices) in maths
\RequirePackage{float}      % for floating figures
\RequirePackage{textcomp}
\RequirePackage{endnotes}   % notes at the end of document
\RequirePackage{paralist}   % very flexible & customizable lists (eg. enumerate/itemize, etc.)
\RequirePackage{framed}     % create framed boxes
\RequirePackage{fancybox}
\RequirePackage{verbatim}   % adds environment for commenting out blocks of text
\RequirePackage{fancyvrb}   % fancy verbatim
\RequirePackage[parfill]{parskip}   % Frensh indentation
\RequirePackage{wrapfig}    % flooating Figures and Tables
\RequirePackage{xcolor}     % custom colors
\RequirePackage{graphicx}   % graphics library
\RequirePackage{subfig}     % include more than one captioned figure/table in a single float
                            % Important!: subfig is incompatible with subcaption
\RequirePackage{type1cm}    % Watermarks
\RequirePackage{eso-pic}    % Watermarks
\RequirePackage{rotating}
\RequirePackage{fancyhdr}   % Fancy Headers and Footers
\RequirePackage{tikz}       % to hard to explain ;-)
\usetikzlibrary{arrows,positioning,fit,shapes,calc,backgrounds}
\usetikzlibrary{decorations.pathreplacing}


%---------------------------------------------------------------------------
% FOOTNOTES
% By default footnotes number are reset to 1 for each Chapter
% This provides sequential footnotes numbering, regardless of chapter.
\RequirePackage{chngcntr}   % Footnotes by chapter
% NOTE: This package has to be loaded before hyperref!
%---------------------------------------------------------------------------



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
backref=section
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
        \setlength{\@tempdimb}{.34\paperwidth}%
        \setlength{\@tempdimc}{.6\paperheight}%
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