\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv_cheatsheet}

\RequirePackage{druv_hacks}
\LoadClass{amsart}

%%% TOGGLES
\newtoggle{druvbib} \togglefalse{druvbib}
\newtoggle{druvtikz} \togglefalse{druvtikz}
%%% OPTIONS
\DeclareOption{bib}{\toggletrue{druvbib}}
\DeclareOption{tikz}{\toggletrue{druvtikz}}
\ProcessOptions
%%% PASS OPTIONS
\iftoggle{druvbib}{\PassOptionsToPackage{bib}{druv_gen}}{}
\iftoggle{druvtikz}{\PassOptionsToPackage{tikz}{druv_gen}}{}


%%% LOAD PACKAGES
\RequirePackage{druv_gen}
\RequirePackage{druv_macros}
\RequirePackage{druv_thm}

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

