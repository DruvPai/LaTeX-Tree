\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv_article}

\RequirePackage{druv_hacks}

%%% TOGGLES
\newtoggle{druvbib} \togglefalse{druvbib}
\newtoggle{druvtikz} \togglefalse{druvtikz}
\newtoggle{druvchapters} \togglefalse{druvchapters}
%%% OPTIONS
\DeclareOption{bib}{\toggletrue{druvbib}}
\DeclareOption{tikz}{\toggletrue{druvtikz}}
\DeclareOption{chapters}{\toggletrue{druvchapters}}
\ProcessOptions
%%% PASS OPTIONS
\iftoggle{druvbib}{\PassOptionsToPackage{bib}{druv_gen}}{}
\iftoggle{druvtikz}{\PassOptionsToPackage{tikz}{druv_gen}}{}
\iftoggle{druvchapters}{\LoadClass[oneside]{book}\PassOptionsToPackage{chapters}{druv_thm}}{\LoadClass{article}}

%%% LOAD PACKAGES
\RequirePackage{druv_gen}
\RequirePackage{druv_macros}
\RequirePackage{druv_thm}

%%% DOCUMENT FORMATTING
%% MARGINS
\RequirePackage{geometry}
\geometry{margin=1in}

%% TITLE FORMATTING
\RequirePackage{titling}
\pretitle{\begin{center}\bfseries\scshape\LARGE}
\posttitle{\end{center}}
\preauthor{\begin{center}\scshape\Large}
\postauthor{\end{center}}
\predate{\begin{center}}
\postdate{\end{center}}

\iftoggle{druvchapters}{}{
    \RequirePackage{changepage}
    \renewenvironment{abstract}{
        \begin{center}
        \textbf{\large Abstract}\normalsize
        \end{center}
        \begin{adjustwidth}{1.5in}{1.5in}
        \setlength{\parindent}{0pt}
    }{
        \end{adjustwidth}
    }
}