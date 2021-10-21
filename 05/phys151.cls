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
\RequirePackage{wasysym}

\RequirePackage{hyperref}
\RequirePackage{bookmark}
\bookmarksetup{open, numbered}

\RequirePackage{tikz}

\RequirePackage{mdframed}

\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{tcolorbox}

\makeatletter
\newcommand*{\problembookmark}{%
  \bookmark[dest=\@currentHref, rellevel=1, keeplevel]{%
    Problem \csname the\thmt@envname\endcsname%
  }%
}
\makeatother

\declaretheoremstyle[bodyfont=\normalfont]{problem}
\declaretheorem[style=problem, postheadhook=\problembookmark]{problem}
\declaretheoremstyle[bodyfont=\normalfont, headfont=\scshape, bodyfont=\small]{hint}
\declaretheorem[style=hint, numbered=no]{hint}

\newlist{subproblems}{enumerate}{3}
\setlist[subproblems, 1]{label=(\alph*)}
\setlist[subproblems, 2]{label=(\roman*)}

\tcbuselibrary{breakable}
\tcbsetforeverylayer{
  no rules/.style={
    toprule=0pt,
    leftrule=0pt,
    rightrule=0pt,
    bottomrule=0pt,
    opacityframe=0,
  },
  no padding/.style={
    top=0pt,
    bottom=0pt,
    left=0pt,
    right=0pt,
  },
  theorem/.style={
    before upper=\vspace{-\parskip},
  },
  sharp corners,
  parbox=false,
  boxsep=0pt,
  breakable,
}
\tcolorboxenvironment{problem}{
  theorem,
  colback=black,
  opacityback=1/16,
  top=1em/2,
  bottom=1em,
  no rules,
}
\tcolorboxenvironment{hint}{
  theorem,
  standard jigsaw,
  opacityback=0,
  colframe=black,
  opacityframe=1/8,
  top=0em,
  bottom=1em/2,
  leftrule=1em/4,
  toprule=0pt,
  bottomrule=0pt,
  rightrule=0pt,
}
\newtcolorbox{solution}{
  after=\newpage,
  opacityback=0,
  no rules,
  no padding,
}
\newtcolorbox{aside}{
  standard jigsaw,
  opacityback=0,
  colframe=black,
  opacityframe=1/8,
  top=0em,
  bottom=1em/2,
  leftrule=1em/4,
  toprule=0pt,
  bottomrule=0pt,
  rightrule=0pt,
}

\renewcommand\d{\mathop{}\!\mathrm d}
\newcommand\pd{\mathop{}\!\partial}
\newcommand\deriv[3][]{%
  \frac{\d\ifx\relax#1\relax\else^{#1}\fi{#2}}{\d{#3}^{#1}}%
}
\newcommand\pderiv[3][]{%
  \frac{\pd\ifx\relax#1\relax\else^{#1}\fi{#2}}{\pd{#3}^{#1}}%
}
\renewcommand\vec\mathbfit

\let\brack\relax
\DeclarePairedDelimiter\abs\lvert\rvert
\DeclarePairedDelimiter\paren()
\DeclarePairedDelimiter\brack[]
\renewcommand\i{\vec i}

\let\div\relax
\newcommand\lapl{\mathop{}\!\nabla^2}
\newcommand\grad{\mathop{}\!\vec\nabla}
\newcommand\ddelta{\mathop{}\!\delta}
\AtBeginDocument{
  % https://github.com/wspr/unicode-math/issues/457
  \let\Im\relax
  \let\Re\relax
  \DeclareMathOperator\Im{Im}
  \DeclareMathOperator\Re{Re}
}
