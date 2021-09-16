% vi: set ft=tex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{phys151}[2021-09-15 Physics 151 (Classical electrodynamics) document class]

\LoadClass{extarticle}

\RequirePackage{microtype}
\RequirePackage{libertinus}
\renewcommand\familydefault\sfdefault

\RequirePackage{geometry}
\geometry{
  left=1in,
  right=1in,
  top=.25in,
  bottom=.5in,
  headheight=1.5em,
  headsep=.5em,
  includeheadfoot,
}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titling}
\newcommand{\hdrstyle}{\color{gray}\small}
\fancypagestyle{phys151}{
  \fancyhf{}
  \lhead{\hdrstyle\bfseries\thetitle}
  \chead{\hdrstyle\scshape Physics 151: Classical Electrodynamics}
  \rhead{\hdrstyle\theauthor}
  \lfoot{\hdrstyle\thepage{} / \pageref{LastPage}}
  \rfoot{\hdrstyle\thedate}
  \renewcommand\headrule{\color{lightgray!50}\hrule}
}
\pagestyle{phys151}

\RequirePackage[table]{xcolor}

\RequirePackage{mathtools}

\RequirePackage{parskip}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{diagbox}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{tabu}
\RequirePackage{soul}

\RequirePackage{hyperref}

\RequirePackage{tikz}

\RequirePackage{mdframed}

\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{tcolorbox}
\declaretheoremstyle[bodyfont=\normalfont, spaceabove=0pt]{problem}
\declaretheorem[style=problem]{problem}
\tcbset{
  sharp corners,
  parbox=false,
  toprule=0pt,
  leftrule=0pt,
  rightrule=0pt,
  bottomrule=0pt,
  opacityframe=0,
  boxsep=0pt,
}
\tcolorboxenvironment{problem}{
  colback=black,
  opacityback=1/16,
  top=0pt,
  bottom=1em,
}
\newtcolorbox{solution}{
  after=\newpage,
  top=0pt,
  bottom=0pt,
  left=0pt,
  right=0pt,
  opacityback=0,
}

\renewcommand\d{\operatorname d\!}
\newcommand\pd{\mathop{}\!\partial}
\newcommand\deriv[3][]{%
  \frac{\d\ifx\relax#1\relax\else^{#1}\fi{#2}}{\d{#3}^{#1}}%
}
\newcommand\pderiv[3][]{%
  \frac{\pd\ifx\relax#1\relax\else^{#1}\fi{#2}}{\pd{#3}^{#1}}%
}
\renewcommand\vec\mathbfit

%\DeclarePairedDelimiter
