\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv-beamer}

\RequirePackage{druv-hacks}

%%% TOGGLES
\newtoggle{druvbib} \togglefalse{druvbib}
\newtoggle{druvtikz} \togglefalse{druvtikz}
\newtoggle{druvhandout} \togglefalse{druvhandout}
%%% OPTIONS
\DeclareOption{bib}{\toggletrue{druvbib}}
\DeclareOption{tikz}{\toggletrue{druvtikz}}
\DeclareOption{handout}{\toggletrue{druvhandout}}
\ProcessOptions
%%% PASS OPTIONS
\iftoggle{druvbib}{\PassOptionsToPackage{bib}{druv-gen}}{}
\iftoggle{druvtikz}{\PassOptionsToPackage{tikz}{druv-gen}}{}
\iftoggle{druvhandout}{\PassOptionsToClass{handout}{beamer}}{}
\PassOptionsToPackage{beamer}{druv-gen}

%%% LOAD PACKAGES
\LoadClass[aspectratio=169]{beamer}
\RequirePackage{druv-gen}
\RequirePackage{druv-macros}

%%% THEME
\usetheme[block=fill]{metropolis}
\usefonttheme[onlymath]{serif}
\useoutertheme{metropolis}
\useinnertheme{metropolis}
\usefonttheme{metropolis}
\usecolortheme{seahorse}
