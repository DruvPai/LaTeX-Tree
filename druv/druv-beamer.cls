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

%%% THEME
% \usetheme[block=fill]{metropolis}
\usetheme{focus}
\usefonttheme[onlymath]{serif}
