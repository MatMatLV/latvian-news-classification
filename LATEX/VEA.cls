\NeedsTeXFormat{LaTeX2e}[2018/12/01]
\ProvidesClass{VEA}[2019 VEA template draft]
% LU template nemts ka baze https://github.com/jzaikovs/lu-latex

% Bakalaura darba, maģistra darbam paredzētā _report_ klase, burti ir 12pt uz A4 papīra
\LoadClass[a4paper,12pt]{report}

% atkāpes no malām kreisā 3.5cm pārējās 2cm
\usepackage[top=20mm,bottom=20mm,left=35mm,right=20mm]{geometry}

% 1.5 rindstarpa
\linespread{1.5}

% matemātikas pierakstam
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsthm}
\usepackage{amsfonts}

\usepackage{thmtools}
\usepackage{color}
\usepackage{nameref}
\usepackage{hyperref}
\usepackage{varioref}
\usepackage{cleveref}
\usepackage{soul}
\usepackage[toc,acronym]{glossaries}

\usepackage{booktabs}

% saišu krāsas iekš PDF (atsaucēm, saturam, saitēm)
\hypersetup{colorlinks=true, linkcolor=black, urlcolor=blue, citecolor=darkgray}

% XeLaTeX atbalsts tiek pieslēgts ar šādām pakotnēm:
\usepackage{fontspec}
\usepackage{xunicode}
\usepackage{xltxtra} 

% Valodu atbalsts
\usepackage{polyglossia}
\setdefaultlanguage{latvian}
\setotherlanguages{english,russian}

\usepackage{fixlatvian}
\PolyglossiaSetup{latvian}{indentfirst=true}

% fontu prasības
\setmainfont[Mapping=tex-text]{Times New Roman}
\setsansfont[Mapping=tex-text]{Arial}
\newfontfamily\russianfont{Times New Roman}

\usepackage{indentfirst}
\setlength{\parindent}{1.27cm}
\setlength{\parskip}{3pt}

\usepackage{setspace}
\usepackage{graphicx}

% use for tables with multirow support
\usepackage{multirow}

% satura rādītājs
\usepackage{tocloft}
\renewcommand{\cftchapdotsep}{\cftdotsep}


\let \originalnumberline \numberline
\def \numberline#1{\originalnumberline{#1.}} % saturā nodaļas ir 1.1. (punkts pēc cipara)

% izmantotajai bibliotēkai.
\usepackage{natbib}

\usepackage{url}
\usepackage{etoolbox}
\usepackage{verbatim}

% attēlu un tabulu nosaukumiem
\usepackage[font=small,labelfont=it,textfont=bf]{caption} 
\captionsetup[table]{justification=raggedleft,singlelinecheck=off,labelsep = newline}

\usepackage[font=small,labelfont=normal,textfont=it]{subcaption} % apakšvirsrakstiem - nav nekur aprakstīts tāpēc konfigurācija pēc gaumes

\usepackage{xcolor}


\patchcmd{\abstract}{\null\vfil}{}{}{}


% Nodaļu nosaukumu labošana - aizdomas, ka šo var izdarīt labāk un pareizāk
\usepackage{titlesec}
\titleformat{\chapter}{\normalfont\fontsize{16}{16}\bfseries\centering}{\thechapter.\hspace{10pt}}{0pt}{\normalfont\fontsize{14}{14}\bfseries\uppercase}
\titleformat{\section}{\normalfont\fontsize{14}{14}\bfseries}{\thesection.\hspace{10pt}}{0pt}{}
\titleformat{\subsection}{\normalfont\fontsize{14}{14}\bfseries}{\thesubsection.\hspace{10pt}}{0pt}{}
\titlespacing{\chapter}{0cm}{2em}{2em} % Nodaļu virsraksat atstarpes no augšas un apakšas


% pielikumiem
\usepackage[toc]{appendix}

% šis paredzēts, lai darbā varētu ievietot programmas koda fragmentus.
\usepackage{listings} 
\lstnewenvironment{code}[1][] % Koda pieraksta bloks \begin{code}[options] \end{code}. Labā lieta, ka šis bloks nedalās pa lapām, lai nebūtu puse vienā un puse otrā lapā.
{
    \noindent
    \minipage{\linewidth}         
    \vspace{0.5\baselineskip}
    \lstset{    
        basicstyle=\ttfamily\footnotesize,
        backgroundcolor=\color{gray!10},
        frame=single,
        captionpos=b, 
        tabsize=4,
        extendedchars=true,
        rulecolor=\color{black!30},
        escapeinside={\%*}{*)},                
        #1
    }
}
{\endminipage}
\usepackage{xcolor}
\definecolor{eclipseStrings}{RGB}{42,0.0,255}
\definecolor{eclipseKeywords}{RGB}{127,0,85}
\colorlet{numb}{magenta!60!black}
\lstdefinelanguage{json}{
    basicstyle=\normalfont\ttfamily,
    commentstyle=\color{eclipseStrings}, % style of comment
    stringstyle=\color{eclipseKeywords}, % style of strings
    numbers=left,
    numberstyle=\scriptsize,
    stepnumber=1,
    numbersep=8pt,
    showstringspaces=false,
    breaklines=true,
    frame=lines,
    backgroundcolor=\color{gray}, %only if you like
    string=[s]{"}{"},
    comment=[l]{:\ "},
    morecomment=[l]{:"},
    literate=
        *{0}{{{\color{numb}0}}}{1}
         {1}{{{\color{numb}1}}}{1}
         {2}{{{\color{numb}2}}}{1}
         {3}{{{\color{numb}3}}}{1}
         {4}{{{\color{numb}4}}}{1}
         {5}{{{\color{numb}5}}}{1}
         {6}{{{\color{numb}6}}}{1}
         {7}{{{\color{numb}7}}}{1}
         {8}{{{\color{numb}8}}}{1}
         {9}{{{\color{numb}9}}}{1}
}



