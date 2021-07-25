\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv-pset}

\RequirePackage{druv-hacks}
\LoadClass[oneside]{scrreprt}

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


%%% LOAD PACKAGES
\RequirePackage{druv-gen}
\RequirePackage{druv-thm}


%%% EXTRA SPECIFIC COMMANDS
\renewcommand\theequation{\arabic{equation}}


