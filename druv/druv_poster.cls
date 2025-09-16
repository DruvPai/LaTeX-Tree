\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv_poster}

\RequirePackage{druv_hacks}

%%% TOGGLES
\newtoggle{druvtikz} \togglefalse{druvtikz}
%%% OPTIONS
\DeclareOption{tikz}{\toggletrue{druvtikz}}
\ProcessOptions

\DeclareKeys{
    width.store = \posterwidth,
    height.store = \posterheight,
    fontscale.store = \posterscale
}
\SetKeys{width=120, height=90, fontscale=1.0}
\ProcessKeyOptions

%%% PASS OPTIONS
\iftoggle{druvtikz}{\PassOptionsToPackage{tikz}{druv_gen}}{}
\PassOptionsToPackage{beamer}{druv_gen}

%%% LOAD PACKAGES
\LoadClass[final]{beamer}

\RequirePackage{druv_gen}
\RequirePackage{druv_macros}

%%% THEME
\RequirePackage[size=custom, width=\posterwidth, height=\posterheight, scale=\posterscale]{beamerposter}
\usetheme{gemini}
\usecolortheme{gemini}
    
% If you have N columns, choose \sepwidth and \colwidth such that
% (N+1)*\sepwidth + N*\colwidth = \paperwidth
\newlength{\sepwidth}
\newlength{\colwidth}
\setlength{\sepwidth}{0.025\paperwidth}
\setlength{\colwidth}{0.3\paperwidth}

\NewDocumentCommand{\separatorcolumn}{}{\begin{column}\sepwidth\end{column}}

\AtBeginDocument{
    % ====================
    % Title
    % ====================

    \title{Some fancy title: followed by some more text}

    \author{Alyssa P. Hacker \inst{1} \and Ben Bitdiddle \inst{2} \and Lem E. Tweakit \inst{2}}

    \institute[shortinst]{\inst{1} Some Institute \samelineand \inst{2} Another Institute}

    % ====================
    % Footer (optional)
    % ====================

    %\footercontent{
    %    \href{https://www.example.com}{https://www.example.com} \hfill
    %    ABC Conference 2025, New York --- XYZ-1234 \hfill
    %    \href{mailto:alyssa.p.hacker@example.com}{alyssa.p.hacker@example.com}
    %}
    % (can be left out to remove footer)

    % ====================
    % Logo (optional)
    % ====================

    % use this to include logos on the left and/or right side of the header:
    % \logoright{\includegraphics[height=7cm]{logo1.pdf}}
    % \logoleft{\includegraphics[height=7cm]{logo2.pdf}}
}
