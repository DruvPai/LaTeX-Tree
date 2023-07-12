\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv-paper}

\RequirePackage{druv-hacks}
\LoadClass{amsart}

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
\RequirePackage{druv-macros}
\RequirePackage{druv-thm}

%%% DOCUMENT FORMATTING
% \KOMAoptions{
%   paper=letter,
%   fontsize=10pt,
%   usegeometry,
% }
\RequirePackage{geometry}
\geometry{margin=1.5cm}
\pagenumbering{gobble}

\RequirePackage[extreme]{savetrees}

