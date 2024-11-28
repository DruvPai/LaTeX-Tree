\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv-article}

\RequirePackage{druv-hacks}

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
\iftoggle{druvbib}{\PassOptionsToPackage{bib}{druv-gen}}{}
\iftoggle{druvtikz}{\PassOptionsToPackage{tikz}{druv-gen}}{}
\iftoggle{druvchapters}{\LoadClass[12pt, oneside]{book}\PassOptionsToPackage{chapters}{druv-thm}}{\LoadClass[12pt]{article}}

%%% LOAD PACKAGES
\RequirePackage{druv-gen}
\RequirePackage{druv-macros}
\RequirePackage{druv-thm}
\RequirePackage{druv-doc}
