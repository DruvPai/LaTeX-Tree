\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv-notes}

\RequirePackage{druv-hacks}
\LoadClass[oneside]{amsbook}

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
% \KOMAoptions{
%   paper=letter,
%   usegeometry,
% }
\pdfstringdefDisableCommands{%
  \let\enspace\empty  % this causes the warning for \kern
  \let\noindent\empty % this causes the warning for \indent
}
\RequirePackage{geometry}
\geometry{margin=3cm}
% \RequirePackage{setspace}  % Line spacing
% \linespread{1.25} 

