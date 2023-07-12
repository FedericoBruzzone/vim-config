%%----------------------------------------------------------------------
%% rebuttal-letter.cls
%% author: Walter Cazzola (26-04-2021)
%%----------------------------------------------------------------------

\def\filename{rebuttal-letter}
\def\fileversion{V1.0 (author: Walter Cazzola)}
\def\filedate{2021/04/26}

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{\filename}[\filedate{} \fileversion]
\typeout{Class file \filename', \fileversion, <\filedate>}

%%% THIS STYLE IS BASED ON THE KOMA ARTICLE CLASS %%%
\LoadClass{scrartcl}
\KOMAoptions{DIV=24, twoside=semi, paper=a4, twocolumn, fontsize=8pt}
\setlength{\textheight}{1.01\textheight}
\setlength{\footskip}{30pt}

%%% LOAD REQUIRED PACKAGES %%%

\synctex=1

\RequirePackage{lmodern}

\RequirePackage[protrusion=true,expansion=true]{microtype}    % Better typography
\RequirePackage{cmap}
\RequirePackage{fixltx2e}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}                               % English language/hyphenation
\RequirePackage[svgnames]{xcolor}                             % Enabling colors by their 'svgnames'
\RequirePackage[hang, small,labelfont=bf,up,textfont=it,up]{caption}   % Custom captions under/above floats
\RequirePackage{fix-cm}                                       % Custom fontsizes
\RequirePackage{ifthen}
\RequirePackage{booktabs}
\RequirePackage{url}
\RequirePackage{lastpage}
\RequirePackage{paralist}
\RequirePackage[pdftex, final, breaklinks, hidelinks,colorlinks = false, bookmarks = false, bookmarksnumbered, plainpages = false,pdfpagelabels, pdfborder = 0 0 0, hyperindex]{hyperref}
\RequirePackage[inline]{enumitem}
\RequirePackage{bibentry}
\nobibliography*

\RequirePackage{ulem}
\normalem%

%%% Custom sectioning (sectsty package)
\RequirePackage{sectsty}                                      % Custom sectioning (see below)
\allsectionsfont{\usefont{T1}{phv}{b}{n}}                     % Change font of all section commands to bch-b-n: CharterBT-Bold font
\sectionfont{\usefont{T1}{phv}{b}{n}}                         % Change font of \section command to bch-b-n: CharterBT-Bold font

%%% Headers and footers
\RequirePackage{fancyhdr}                                     % Needed to define custom headers/footers
\pagestyle{fancy}                                             % Enabling the custom headers/footers

% Header (empty)
\fancyhead[L]{} \fancyhead[C]{} \fancyhead[R]{}
% Footer (you may change this to your own needs)
\fancyfoot[L]{\footnotesize Response Letter \textbullet~\runningauthors}
\fancyfoot[C]{}
\fancyfoot[R]{\footnotesize page \thepage\ of~\pageref{LastPage}}   % "Page 1 of 2"
\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.4pt}

%%% Creating an initial of the first character of the content
\RequirePackage{lettrine}
\newcommand{\initial}[1]{\lettrine[lines=3,lhang=0.3,nindent=0em]{\color{DarkGoldenrod}{\textsf{#1}}}{}}

%%% Title, author and date metadata
\RequirePackage[noblocks]{authblk}
\RequirePackage{titling}                                             % For custom titles

\newcommand{\HorRule}{\color{DarkGoldenrod}\rule{\linewidth}{1pt}\\}
\pretitle{\vspace{-30pt}\begin{flushleft}\HorRule\fontsize{30}{30}\usefont{T1}{phv}{b}{n}\color{DarkRed}\selectfont}
\title{Response Letter}
\posttitle{\par\end{flushleft}\vspace*{0.5em}}

\preauthor{\begin{flushleft}\large \lineskip0.5em \usefont{T1}{phv}{b}{sl} \color{DarkRed}}
\postauthor{\end{flushleft}\HorRule}
\date{}

\renewcommand\Authfont{\Large\usefont{T1}{phv}{b}{sl} \color{DarkRed}}
\renewcommand\Affilfont{\footnotesize\usefont{T1}{phv}{m}{sl}\color{Black}}
\renewcommand\Authsep{, }
\renewcommand\Authand{, }
\renewcommand\Authands{, and }
\renewcommand\AB@affilsepx{, \protect\Affilfont}

\RequirePackage{tikz}
\usetikzlibrary{positioning,fit,calc,arrows}

\RequirePackage{etoolbox}
\RequirePackage{csquotes}
\RequirePackage{framed}
\RequirePackage{newfile}
\RequirePackage{xstring}
% \RequirePackage{MnSymbol}
\RequirePackage[scaled=.85]{beramono}
\RequirePackage[on]{dowecomment?}

\RequirePackage{showcode}

\newcounter{SuspendEnumAt}
\newcounter{SuspendEnumIAt}
%% Reviewing.

\newcommand{\tol}[1]{\overset{#1}{\rightarrow}}

\colorlet{quote}{black!60}
\colorlet{remark}{black!80}

\definecolor{solved}{hsb}    {.35,1,.7}%
\definecolor{future}{hsb}    {.50,1,.7}%
\definecolor{incorrect}{hsb} {.65,1,.7}%
\definecolor{disagree}{hsb}  {.80,1,.9}%
\definecolor{unsolved}{hsb}  {.95,1,.7}%
\definecolor{unspecific}{hsb}{.10,1,.8}%

\newcommand{\status}[2]{\textsf{[\,\textcolor{#1}{#2}\,]}}
\newcommand{\statusincorrect}{\status{incorrect}{Misunderstanding}}
\newcommand{\statusunsolved}{\status{unsolved}{Blocked}}
\newcommand{\statusdisagree}{\status{disagree}{Reconsider}}
\newcommand{\statusunspecific}{\status{unspecific}{Feedback}}
\newcommand{\statusfuture}{\status{future}{Future work}}
\newcommand{\statussolved}{\status{solved}{OK}}

% Force emph to behave always as in upright text.
\let\origemph=\emph%
\renewcommand{\emph}[1]{\textup{\origemph{#1}}}

\makeatletter
\newcommand*{\@doendeq}{\everypar{{\setbox\z@\lastbox}\everypar{}}}
\newenvironment{remark}[1]{%
  \addtocounter{remarks}{1}%
  \begingroup%
  \color{remark}%
  \def\FrameCommand{\vrule width 1pt \hspace{10pt}}%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \slshape\noindent#1%
}{\endMakeFramed\endgroup\ignorespacesafterend\aftergroup\@doendeq}
\newenvironment{remark*}[1]{%
\vspace*{-.33cm}\begingroup%
  \color{remark}%
  \def\FrameCommand{\vrule width 1pt \hspace{10pt}}%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \slshape\noindent#1%
}{\endMakeFramed\endgroup\ignorespacesafterend\aftergroup\@doendeq}
\makeatother

\renewenvironment{quote}
  {\par\noindent\begingroup\color{quote}``\,\upshape\ignorespaces}
  {\unskip''\endgroup\par\noindent\ignorespacesafterend}

\newenvironment{incorrect}{\addtocounter{incorrect}{1}\statusincorrect}{}
\newenvironment{unsolved}{\addtocounter{unsolved}{1}\statusunsolved}{}
\newenvironment{disagree}{\addtocounter{disagree}{1}\statusdisagree}{}
\newenvironment{unspecific}{\addtocounter{unspecific}{1}\statusunspecific}{}
\newenvironment{future}{\addtocounter{future}{1}\statusfuture}{}
\newenvironment{solved}{\addtocounter{solved}{1}\statussolved}{}

\newenvironment{incorrect*}{\statusincorrect}{}
\newenvironment{unsolved*}{\statusunsolved}{}
\newenvironment{disagree*}{\statusdisagree}{}
\newenvironment{unspecific*}{\statusunspecific}{}
\newenvironment{future*}{\statusfuture}{}
\newenvironment{solved*}{\statussolved}{}

\def\flags{remarks,solved,unsolved,incorrect,disagree,unspecific,future}

\foreach\flag in\flags% chktex 1
  {\expandafter\newcounter{\flag}
   \expandafter\newcounter{total\flag}}

\InputIfFileExists{\jobname.cnt}{}{}

\newcounter{totalresponses}
\defcounter{totalresponses}%
  {\value{totalincorrect} +
   \value{totalunsolved} +
   \value{totaldisagree} +
   \value{totalunspecific} +
   \value{totalfuture} +
   \value{totalsolved}}

\newoutputstream{counters}
\openoutputfile{\jobname.cnt}{counters}

\AtEndDocument%
  {\foreach\flag in\flags% chktex 1
     {\addtostream{counters}%
        {\noexpand\setcounter{total\flag}{\arabic{\flag}}}}
   \closeoutputstream{counters}}

\renewcommand{\labelitemi}{---}

\RequirePackage{xspace}
\RequirePackage{pifont}

\newcommand{\embeddedcitation}[1]{\begin{quotation}\bibentry{#1}\end{quotation}}

\definecolor{BloodRed}{rgb}{.86,0,0}

\newcommand{\incipit}{%
As required by the resubmission process, we are submitting this response letter along with a revised version of our paper, entitled «\ptitle».

We would like to thank our anonymous reviewers for their efforts in reviewing our previous submission. We have considered all remarks carefully, and addressed them to the best of our ability.

We split the input from the reviews in \arabic{totalremarks} different remarks. Each remark is followed by our response and an explicit status indication:
\begin{itemize}[nosep,label=--]
   \newcommand{\total}[1]{\makebox[3ex][r]{\arabic{total##1}} remarks are flagged as \csname status##1\endcsname}
   \item \total{solved}
   \item \total{future}
   \item \total{incorrect}\footnote{The remark seems to have overlooked a point made in the paper. We explain where and how the point is made.}
   \item \total{disagree}\footnote{We ask the reviewer to reconsider the remark in the light of arguments and clarifications we give.}
   \item \total{unsolved}\footnote{We could not accommodate the remark in the text due to blocking constraints (most likely lack of space).}
   \item \total{unspecific}\footnote{The remark is difficult to address without further input or feedback from the reviewer.}
\end{itemize}

For every open issue, we comment on why it could not be closed. We took the liberty of slightly retouching the formatting, though obviously not the content, of each review. Note that the numbering of sections to which the remarks refer might have changed due to our editing for this new version of the paper.

\ifnumless{\value{totalresponses}}{\value{totalremarks}}{}{}
}
