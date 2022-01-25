\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv-beamer}

\RequirePackage{druv-hacks}
\LoadClass[aspectratio=169]{beamer}

%%% TOGGLES
\newtoggle{druvbib} \togglefalse{druvbib}
\newtoggle{druvtikz} \togglefalse{druvtikz}
%%% OPTIONS
\DeclareOption{bib}{\toggletrue{druvbib}}
\DeclareOption{tikz}{\toggletrue{druvtikz}}
\ProcessOptions
%%% PASS OPTIONS
\iftoggle{druvbib}{\PassOptionsToPackage{bib}{druv-gen}}{}
\iftoggle{druvtikz}{\PassOptionsToPackage{tikz}{druv-gen}}{}
\PassOptionsToPackage{beamer}{druv-gen}

%%% LOAD PACKAGES
\RequirePackage{druv-gen}

%%% THEME
\usetheme[block=fill]{metropolis}