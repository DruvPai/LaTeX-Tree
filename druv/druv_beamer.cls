\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druv_beamer}

\RequirePackage{druv_hacks}

%%% TOGGLES
\newtoggle{druvhandout} \togglefalse{druvhandout}
\newtoggle{druvnotes} \togglefalse{druvnotes}
%%% OPTIONS
\DeclareOption{handout}{\toggletrue{druvhandout}}
\DeclareOption{notes}{\toggletrue{druvnotes}}
\ProcessOptions
%%% PASS OPTIONS
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
\usetheme{Antibes}
\usecolortheme{dolphin}
\usefonttheme{professionalfonts}
\useoutertheme{infolines}
\useinnertheme{circles}

% \AtBeginDocument{
%     \title{Fancy Title: Followed by Some More Text}

%     \author{\underline{Alyssa P. Hacker} \inst{1} \and Ben Bitdiddle \inst{2} \and Lem E. Tweakit \inst{2}}

%     \institute[shortinst]{\inst{1} Some Institute \samelineand \inst{2} Another Institute}
%
%     \date{Some Day}
% }

%%% BEAMER-SPECIFIC MACROS

% Per-slide footer note (e.g. citations) shown above the normal Beamer footer.
% Usage inside a frame:
%   \footernote{Some citation text.}
% Multiple calls within a frame will stack (separated by \par).
\newcommand{\insertfooternote}{}

\NewDocumentCommand{\footernote}{m}{%
    \ifblank{\insertfooternote}{
        \gappto{\insertfooternote}{#1}
    }{
        \gappto{\insertfooternote}{\par #1}
    }
}

% Reset at the beginning of every frame so notes are per-slide by default.
\AtBeginEnvironment{frame}{\gdef\insertfooternote{}}

% Appearance knobs (override in your main.tex if desired).
\setbeamercolor{footernote}{fg=gray}
\setbeamerfont{footernote}{size=\tiny}

% Geometry knobs (override in your main.tex if desired).
%
% Horizontal:
% - We shift the overlay node right by \druvfooternotehmargin.
% - We set the note box width to \paperwidth - 2*\druvfooternotehmargin.
%   (So left and right margins match exactly.)
\newlength{\druvfooternotehmargin}
\setlength{\druvfooternotehmargin}{0.05cm}
\newlength{\druvfooternotewidth}
\setlength{\druvfooternotewidth}{\dimexpr\paperwidth-2\druvfooternotehmargin\relax}
\NewDocumentCommand{\setfooternotehmargin}{m}{%
    \setlength{\druvfooternotehmargin}{#1}%
    \setlength{\druvfooternotewidth}{\dimexpr\paperwidth-2\druvfooternotehmargin\relax}%
}

% Vertical:
% Beamer's infolines footline has ht=2.25ex and dp=1ex (see
% beamerouterthemeinfolines.sty)x. We place the bottom
% of the footernote box above ht, plus a small additional gap.
\newlength{\druvfootlineheight}
\setlength{\druvfootlineheight}{2.25ex}
\newlength{\druvfooternotegap}
\setlength{\druvfooternotegap}{0.05ex}
\newlength{\druvfooternotevoffset}
\setlength{\druvfooternotevoffset}{\dimexpr\druvfootlineheight+\druvfooternotegap\relax}

% Overlay the note above the existing footline (zero impact on layout).
\addtobeamertemplate{footline}{%
    \ifblank{\insertfooternote}{}{\relax%
        \begin{tikzpicture}[remember picture,overlay]
            \node[
                anchor=south west,
                inner sep=0pt,
                xshift=\druvfooternotehmargin,
                yshift=\druvfooternotevoffset
            ] at (current page.south west) {%
                \begin{minipage}[t]{\druvfooternotewidth}
                    \usebeamerfont{footernote}\footnotesize
                    \usebeamercolor[fg]{footernote}%
                    \raggedright%
                    \insertfooternote%
                \end{minipage}%
            };
        \end{tikzpicture}%
    }%
}{}%

