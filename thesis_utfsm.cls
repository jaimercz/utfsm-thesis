\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfsm-thesis}[6/6/2016 UTFSM Thesis class]
\LoadClass{book}

%---------------------------------------------------------------------------
%%% BIBLIOGRAPHY
\RequirePackage[longnamesfirst]{natbib}
%---------------------------------------------------------------------------

%---------------------------------------------------------------------------
%%% LINE SPACING
\RequirePackage{setspace}
%---------------------------------------------------------------------------


\newcommand{\thesisTitle}[1]{
    \vspace{15mm}
    \begin{spacing}{1.5} 
        \textbf{\large #1}
    \end{spacing}
    \vspace{15mm}
}