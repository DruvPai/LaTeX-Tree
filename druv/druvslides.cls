\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druvslides}

\DeclareOption{handout}{
  \PassOptionsToClass{\CurrentOption}{beamer}
}

\ProcessOptions\relax

\LoadClass[noamssymb, aspectratio=169]{beamer}


\RequirePackage{druv-pkg}
\RequirePackage{druv-macros}

\renewcommand{\familydefault}{\sfdefault}
\usefonttheme[onlymath]{serif}
\usetheme{Madrid}
\usecolortheme{default}
