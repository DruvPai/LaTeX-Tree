\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv_beamer}

\RequirePackage{druv_hacks}

%%% TOGGLES
\newtoggle{druvbib} \togglefalse{druvbib}
\newtoggle{druvtikz} \togglefalse{druvtikz}
\newtoggle{druvhandout} \togglefalse{druvhandout}
\newtoggle{druvnotes} \togglefalse{druvnotes}
%%% OPTIONS
\DeclareOption{bib}{\toggletrue{druvbib}}
\DeclareOption{tikz}{\toggletrue{druvtikz}}
\DeclareOption{handout}{\toggletrue{druvhandout}}
\DeclareOption{notes}{\toggletrue{druvnotes}}
\ProcessOptions
%%% PASS OPTIONS
\iftoggle{druvbib}{\PassOptionsToPackage{bib}{druv_gen}}{}
\iftoggle{druvtikz}{\PassOptionsToPackage{tikz}{druv_gen}}{}
\iftoggle{druvhandout}{\PassOptionsToClass{handout}{beamer}}{}
\PassOptionsToPackage{beamer}{druv_gen}

%%% LOAD PACKAGES
\LoadClass{beamer}
\iftoggle{druvnotes}{
    \setbeamertemplate{note page}[plain]
    \setbeameroption{show notes on second screen=right}
}{}

\RequirePackage{druv_gen}
\RequirePackage{druv_macros}

%%% THEME
\usetheme{auriga}
\usecolortheme{auriga}

\AtBeginDocument{
    \title{Fancy Title: Followed by Some More Text}

    \author{\underline{Alyssa P. Hacker} \inst{1} \and Ben Bitdiddle \inst{2} \and Lem E. Tweakit \inst{2}}

    \institute[shortinst]{\inst{1} Some Institute \samelineand \inst{2} Another Institute}
}

