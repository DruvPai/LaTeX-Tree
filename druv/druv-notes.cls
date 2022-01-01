\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv-notes}

\RequirePackage{druv-hacks}
\LoadClass{scrreprt}

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

%%% DOCUMENT FORMATTING
\KOMAoptions{
  paper=letter,
  usegeometry,
}
\RequirePackage{geometry}
\geometry{margin=1.5cm, includefoot}
