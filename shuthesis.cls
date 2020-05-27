%%
%% This is file `shuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% shuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2017-2017 by Lele Liu <ahhylau@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{shuthesis}
[2017/05/05 v2.0 Shanghai University Thesis Template]
\hyphenation{Shu-Thesis}
\def\shuthesis{\textsc{ShuThesis}}
\def\shubachelorthesis{\textsc{ShuBachelorThesis}}
\def\shubachelorthesisOSC{\textsc{ShuBachelorThesis-OSC}}
\def\version{2.0}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=shu,
  prefix=shu@,
  setkeys=\kvsetkeys}
\newif\ifshu@master
\newif\ifshu@doctor
\define@key{shu}{type}{%
  \shu@masterfalse
  \shu@doctorfalse
  \expandafter\csname shu@#1true\endcsname}
\def\shu@deprecated@type@option{%
  \kvsetkeys{shu}{type=\CurrentOption} % for compatability.
  \ClassError{shuthesis}{Option '\CurrentOption' is deprecated, \MessageBreak
                         please use 'type=\CurrentOption' instead}{}}
\DeclareVoidOption{master}{\shu@deprecated@type@option}
\DeclareVoidOption{doctor}{\shu@deprecated@type@option}
\DeclareBoolOption{secret}
\DeclareBoolOption{arialtitle}
\DeclareBoolOption{raggedbottom}
\DeclareBoolOption{pifootnote}
\DeclareBoolOption{nocolor}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\kvsetkeys{shu}{raggedbottom,arialtitle}
\ProcessKeyvalOptions*
\LoadClass[a4paper,UTF8,zihao=-4,scheme=plain]{ctexbook}
\PassOptionsToPackage{no-math}{fontspec}
\RequirePackage{ifxetex}
% \ifxetex
% \setCJKfamilyfont{LanTingHei}{FZLanTing.ttf}
% \newcommand{\LanTingHei}{\CJKfamily{LanTingHei}}
% \setCJKfamilyfont{XBSong}{FZXBsong.ttf}
% \newcommand{\XBSong}{\CJKfamily{XBSong}}
% \setCJKfamilyfont{HanYikai}{HanYikaishu.ttf}
% \newcommand{\HanYikai}{\CJKfamily{HanYikai}}
% \else\fi
  \ifshu@master\relax\else
    \ifshu@doctor\relax\else
        \ClassError{shuthesis}%
                  {Please specify thesis type in option: \MessageBreak
                    type=[master|doctor]}{}
    \fi
  \fi
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage{bm}
\RequirePackage{mathtools}
\RequirePackage[defaultsups]{newtxtext}
\RequirePackage{courier}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifshu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifshu@pifootnote
  \RequirePackage{pifont}
\fi
\RequirePackage{CJKfntef}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{makecell}
\RequirePackage{tabu}
\RequirePackage{booktabs}
\RequirePackage{ulem}
\RequirePackage[numbers,sort&compress,super,square]{natbib}
\patchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{}{}{} % lof
\patchcmd{\@chapter}{\addtocontents{lot}{\protect\addvspace{10\p@}}}{}{}{} % lot
\RequirePackage{hyperref}
\ifxetex
  \hypersetup{%
    CJKbookmarks=true}
\else
  \hypersetup{%
    unicode=true,
    CJKbookmarks=false}
\fi
\hypersetup{%
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=2,
  breaklinks=true,
  colorlinks=true,
  plainpages=false}
\ifshu@nocolor
\hypersetup{%
  citecolor=black,
  linkcolor=black,
  urlcolor=black}
\else
\hypersetup{%
  citecolor=blue,
  linkcolor=blue,
  urlcolor=blue}
\fi
\urlstyle{same}
\RequirePackage{geometry}
\geometry{
  a4paper,
  ignoreall,
  nomarginpar}
\geometry{
  left=28mm,
  right=28mm,
  headheight=8mm,
  headsep=7mm,
  top=30mm,
  bottom=26mm,
  footskip=7mm}
\RequirePackage{fancyhdr}
\def\theoremautorefname{定理}
\def\lemmaautorefname{引理}
\def\definitionautorefname{定义}
\def\corollaryautorefname{推论}
\def\propositionautorefname{命题}
\let\shu@cleardoublepage\cleardoublepage
\newcommand{\shu@clearemptydoublepage}{%
  \clearpage{\pagestyle{shu@empty}\shu@cleardoublepage}}
\let\cleardoublepage\shu@clearemptydoublepage
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{shu@headings}}
\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{shu@headings}}
\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip=13bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=13bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\shu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\shu@def@fontsize{maxsize}{57bp}
\shu@def@fontsize{chuhao}{42bp}
\shu@def@fontsize{xiaochu}{36bp}
\shu@def@fontsize{yihao}{26bp}
\shu@def@fontsize{xiaoyi}{24bp}
\shu@def@fontsize{erhao}{22bp}
\shu@def@fontsize{xiaoer}{18bp}
\shu@def@fontsize{sanhao}{16bp}
\shu@def@fontsize{xiaosan}{15bp}
\shu@def@fontsize{sihao}{14bp}
\shu@def@fontsize{banxiaosi}{13bp}
\shu@def@fontsize{xiaosi}{12bp}
\shu@def@fontsize{dawu}{11bp}
\shu@def@fontsize{wuhao}{10.5bp}
\shu@def@fontsize{xiaowu}{9bp}
\shu@def@fontsize{liuhao}{7.5bp}
\shu@def@fontsize{xiaoliu}{6.5bp}
\shu@def@fontsize{qihao}{5.5bp}
\shu@def@fontsize{bahao}{5bp}
\fancypagestyle{shu@empty}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{shu@plain}{%
  \fancyhead{}
  \fancyfoot[C]{\xiaowu\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{shu@headings}{%
  \fancyhead{}
  % \fancyhead[LE]{\wuhao\kaishu 上海大学毕业设计(论文)}
  % \fancyhead[LO]{\wuhao\kaishu 上海大学毕业设计(论文)}
  \fancyhead[LE]{\xiaowu 上海大学毕业设计(论文)}
  \fancyhead[LO]{\xiaowu 上海大学毕业设计(论文)}
  % \fancyhead[CE]{\wuhao\kaishu 上海大学毕业设计(论文)}
  \fancyfoot{}
  \fancyfoot[C]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\ctexset{%
  space=auto,
  autoindent=true}
\setlist{nosep}
\def\shu@textcircled#1{%
  \ifnum\value{#1} >9
    \ClassError{shuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}
  \fi
  \ifshu@pifootnote%
    \ding{\the\numexpr\value{#1}+171\relax}%
  \else%
    \textcircled{\xiaoliu\arabic{#1}}%
  \fi}
% \renewcommand{\thefootnote}{\shu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\shu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\shu@footnotesize\footnotesize
\renewcommand\footnotesize{\shu@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\shu@makefnmark\@makefnmark
\def\shu@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\shu@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\shu@makefnmark}{}{}
\allowdisplaybreaks[4]
\numberwithin{equation}{chapter}
\setlength{\floatsep}{20bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{20bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{20bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\let\old@tabular\@tabular
\def\shu@tabular{\dawu[1.5]\old@tabular}
\DeclareCaptionLabelFormat{shu}{{\dawu[1.5]\heiti #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{shu}{\hspace{1em}}
\DeclareCaptionFont{shu}{\dawu[1.5]}
\captionsetup{labelformat=shu,labelsep=shu,font=shu}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[sub]{font=shu,skip=6bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\shu@LT@array\LT@array
\def\LT@array{\dawu[1.5]\shu@LT@array} % set default font size
\def\shu@title@font{%
  \ifshu@arialtitle\sffamily\else\relax\fi}
\AtBeginDocument{%
  \pagestyle{shu@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\shu@chapter@titleformat[1]{%
  \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
 }
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={shu@headings},
    beforeskip={9bp},
    aftername=\hskip\ccwd,
    afterskip={24bp},
    format={\centering\shu@title@font\heiti\xiaoer[1]},
    % format={\centering\shu@title@font\heiti\xiaoer[1]},
    nameformat=\relax,
    % number=\chinese{chapter},
    numberformat=\relax,
    titleformat=\shu@chapter@titleformat,
  },
  section={
    afterindent=true,
    beforeskip={24bp\@plus 1ex \@minus .2ex},
    afterskip={6bp\@plus .2ex},
    name={\S},
    format={\shu@title@font\sanhao\heiti},
  },
  subsection={
    afterindent=true,
    beforeskip={16bp\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    name={\S},
    format={\shu@title@font\large\heiti},
  },
  subsubsection={
    afterindent=true,
    beforeskip={16bp\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    name={\S},
    format={\shu@title@font\large\heiti},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true
}
\newcounter{shu@bookmark}
\NewDocumentCommand\shu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{shuthesis}{You have to use the star form: \string\shu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \addtocounter{shu@bookmark}\@ne
      \pdfbookmark[0]{#3}{shuchapter.\theshu@bookmark}
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }{%
    \addcontentsline{toc}{chapter}{#3}
  }%
  \chapter*{#3}%
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}
    {\@mkboth{}{}}
    {\@mkboth{#4}{#4}}
  }{%
    \@mkboth{#3}{#3}
  }
 }
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\def\@pnumwidth{2em}
\def\@tocrmarg{\@pnumwidth}
\def\@dotsep{1}
\patchcmd{\@dottedtocline}{#4}{\csname shu@toc@font\endcsname #4}{}{}
\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}

% \patchcmd{\@dottedtocline}% <cmd>
%   {#4}% <search>
%   {\ifnum#1=1\S\fi#4}% <replace>
%   {}{}% <search><replace>

% \patchcmd{\@dottedtocline}% <cmd>
%   {#4}% <search>
%   {\ifnum#1=2\S\fi#4}% <replace>
%   {}{}% <search><replace>

% \patchcmd{\@dottedtocline}% <cmd>
%   {#4}% <search>
%   {\ifnum#1=3\S\fi#4}% <replace>
%   {}{}% <search><replace>

% \patchcmd{\@dottedtocline}% <cmd>
%   {#4}% <search>
%   {\ifnum#1=4\S\fi#4}% <replace>
%   {}{}% <search><replace>

\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 4bp \@plus\p@
    \setlength\@tempdima{3.7em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      % numberline is called here, and it uses \@tempdima
      {\csname shu@toc@font\endcsname\heiti #1}
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak{\normalfont\normalcolor #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\def\shu@def@term#1{%
  \define@key{shu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname shu@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\shu@def@term{secretlevel}
\shu@def@term{secretyear}
\shu@def@term{id}
\shu@def@term{catalognumber}
\shu@def@term{cauthor}
\shu@def@term{eauthor}
\shu@def@term{csupervisor}
\shu@def@term{esupervisor}
\shu@def@term{ctitle}
\shu@def@term{etitle}
\shu@def@term{cdepartment}
\shu@def@term{edepartment}
\shu@def@term{cmajor}
\shu@def@term{emajor}
\shu@def@term{cdisciplines}
\shu@def@term{edisciplines}
\shu@def@term{cdate}
\shu@def@term{edate}
\shu@def@term{coverdate}
\newcommand{\shu@@cabstract}[1]{\long\gdef\shu@cabstract{#1}}
\newenvironment{cabstract}{\Collect@Body\shu@@cabstract}{}
\newcommand{\shu@@eabstract}[1]{\long\gdef\shu@eabstract{#1}}
\newenvironment{eabstract}{\Collect@Body\shu@@eabstract}{}
\def\shu@parse@keywords#1{
  \define@key{shu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname shu@#1\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname shu@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname shu@#1\endcsname{%
          \ignorespaces\csname shu@keywords@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
      \expandafter\csname shu@#1\expandafter\endcsname\expandafter{\reserved@a}
     }
   }
 }
\shu@parse@keywords{ckeywords}
\shu@parse@keywords{ekeywords}
\def\shusetup{\kvsetkeys{shu}}
% \def\shu@first@page{\renewcommand{\ULthickness}{1.8pt}%
%  {\noindent\ifxetex\XBSong\else\bfseries\songti\fi%
%  中图分类号：{\bfseries\shu@catalognumber}\hfill 单位代号：{\bfseries 10280\hphantom{000}}\\
%  密\hphantom{空白空}级：\expandafter\ifshu@secret\shu@secret@content\else%
%  \shu@secretlevel\fi\hfill 学\hphantom{空白}号：{\bfseries\shu@id}}
%  \par\vskip1mm
%  \noindent\uline{\hspace{105mm}}\par\vskip2mm
%   \ifshu@nocolor
%   \raisebox{1ex}[0pt][0pt]{
%   \includegraphics[height=3cm,width=9.8cm]{shublack.pdf}}\hskip5mm
%   \includegraphics[height=3.3cm,width=2.7cm]{shulogoblack.pdf}
%   \else
%   \raisebox{1ex}[0pt][0pt]{
%   \includegraphics[height=3cm,width=9.8cm]{shu.pdf}}\hskip5mm
%   \includegraphics[height=3.3cm,width=2.7cm]{shulogo.pdf}\fi\par\vskip5mm
%   \hskip3mm{\maxsize\ifxetex\LanTingHei\else\bfseries\heiti\fi\shu@cdegree 学位论文}
%  \par\vskip-1mm
%  \noindent\uline{\hskip143mm}\par\vskip1mm
%  {\zihao{-1}\bfseries
%   \centerline{SHANGHAI~~UNIVERSITY}
%   \centerline{\MakeUppercase{\shu@edegree}'S~~DISSERTATION}}
%  \begin{center}
%   \tabulinesep=_5mm^5mm
%   \arrayrulewidth=1pt
%      \begin{tabu} to 0.9\textwidth{|X[1,c,m]|X[11,c,m]|}
%       \hline
%       \zihao{-2}\ifxetex\HanYikai\else\bfseries\kaishu\fi\makecell{题\\ 目} &
%       \erhao[1.4]\bfseries\ifxetex\LanTingHei\else\heiti\fi\tabulinesep=_1.5mm^1.5mm
%           \begin{tabu}{X[c,m]}
%             \shu@ctitle
%           \end{tabu}\\\hline
%      \end{tabu}
%  \end{center}
%   \vfill\renewcommand{\ULthickness}{1pt}
%  \begin{center}
%   {\heiti\xiaoer[1.9]
%   \begin{tabular}{cl}
%     作\hphantom{空白}者 & \uline{\kaishu\makebox[55mm]{\shu@cauthor}}\\
%     学科专业            & \uline{\kaishu\makebox[55mm]{\shu@cmajor}}\\
%     导\hphantom{空白}师 & \uline{\kaishu\makebox[55mm]{\shu@csupervisor}}\\
%     完成日期            & \uline{\kaishu\makebox[55mm]{\shu@coverdate}}\\
%   \end{tabular}}
%  \end{center}
%  \if@openright\cleardoublepage\else\clearpage\fi}
% \newcommand{\makefirstpage}{
%  \newgeometry{left=3.5cm,right=3.5cm,top=3cm,bottom=3.5cm}
%  \shu@first@page
%  \restoregeometry}
% \newcommand{\shu@committee}{
%  \noindent\centerline{\zihao{2} 上海大学} \par
%  \vskip1.5cm
%  \erhao[1.5] 本论文经答辩委员会全体委员审查，
%  确认符合上海大学博士学位论文质量要求。\par
%  \vskip3.9cm
%  \zihao{-2} 答辩委员会签名:\par
%  \vskip1cm
%  主席:\par
%  \vskip1cm
%  委员:\par
%  \vskip6cm
%  导\hphantom{空白}师:\par
%  \vskip1cm
%  答辩日期:
%  \if@openright\cleardoublepage\else\clearpage\fi
%  }
% \newcommand{\shu@authordeclare}{%
%  \begin{center}
%  \zihao{2}\ifxetex\XBSong\else\bfseries\songti\fi 原创性声明
%  \end{center}
%  \par\vskip1cm\sihao[1.7]
%  本人声明：所呈交的论文是本人在导师指导下进行的研究工作。
%  除了文中特别加以标注和致谢的地方外，论文中不包含其他人已发表或撰写过
%  的研究成果。参与同一工作的其他同志对本研究所做的任何贡献均已在论文中
%  作了明确的说明并表示了谢意。
%  \vskip2.3cm
%  \hfill 签名: \underline{\hskip3cm}
%  日期: \underline{\hskip3cm}\\
%  \vskip2.5cm
%  \begin{center}
%  \zihao{2}\ifxetex\XBSong\else\bfseries\songti\fi 本论文使用授权说明
%  \end{center}
%  \par\vskip1.1cm
%  本人完全了解上海大学有关保留、使用学位论文的规定。即：学校有权保留论文
%  及送交论文复印件，允许论文被查阅和借阅；学校可以公布论文的全部或部分内容。\par
%  ({\ifxetex\XBSong\else\bfseries\songti\fi 保密的论文在解密后应遵守此规定})
%  \vskip1.5cm
%  \noindent\hfill 签名: \underline{\hskip2.7cm}
%  导师签名: \underline{\hskip2.7cm}
%  日期: \underline{\hskip2.7cm}\hfill
% \if@openright\cleardoublepage\else\clearpage\fi}
% \newcommand{\shu@cncover}{%
%  \vspace*{1.3cm}
%  \centerline{\zihao{2} 上海大学\shu@cdisciplines\shu@cdegree 学位论文}
%  \vskip3.5cm
%  \begin{center}\yihao[1.5]{\bfseries{\shu@ctitle}}\end{center}
%  \vskip3.5cm
%  \begin{center}\xiaoer[1.8]
%  \begin{tabular}{cl}
%  作\hphantom{空白}者: & \kaishu\shu@cauthor\\
%  导\hphantom{空白}师: & \kaishu\shu@csupervisor\\
%  学科专业:            & \kaishu\shu@cmajor\\
%  \end{tabular}
%  \end{center}
%  \vskip3.5cm
%  \begin{center}
%  \sanhao[1.6]\shu@cdepartment\\
%  上海大学\\
%  \shu@cdate
%  \end{center}
% \if@openright\cleardoublepage\else\clearpage\fi}
% \newcommand{\shu@engcover}{%
%  \vspace*{.5cm}
%  \begin{center}
%  \sanhao[1.6] A Dissertation Submitted to Shanghai University
%  for the \\ Degree of \shu@edegree~in \shu@edisciplines\par
%  \vskip3cm
%  \begin{center}\zihao{1}{\bfseries{\shu@etitle}}\end{center}
%  \vskip4cm
%  \begin{tabular}{rl}
%  Candidate:  & \shu@eauthor\\
%  Supervisor: & \shu@esupervisor\\
%  Major:      & \shu@emajor\\
%  \end{tabular}
%  \vskip4cm
%  \bfseries\shu@edepartment\\
%  Shanghai University\\
%  \shu@edate
%  \end{center}
%  \if@openright\cleardoublepage\else\clearpage\fi}
% \def\makecover{\shu@setup@pdfinfo\shu@makecover}
% \def\shu@setup@pdfinfo{
%   \hypersetup{
%     pdftitle={\shu@ctitle},
%     pdfauthor={\shu@cauthor},
%     pdfsubject={\shu@cdegree},
%     pdfkeywords={\shu@ckeywords},
%     pdfcreator={\shuthesis-v\version}}}
% \newcommand{\shu@makecover}{
%   \phantomsection
%   \pdfbookmark[-1]{\shu@ctitle}{ctitle}
%   \normalsize
%  \shu@committee
%  \shu@authordeclare
%  \shu@cncover
%  \shu@engcover
%  \normalsize
%  \shu@makeabstract
%  \let\@tabular\shu@tabular
%  \if@openright\cleardoublepage\else\clearpage\fi}
% \newbox\shu@kw
% \newcommand\shu@put@keywords[2]{%
%   \begingroup
%     \setbox\shu@kw=\hbox{#1}
%     \noindent\hangindent\wd\shu@kw\hangafter1%
%     \box\shu@kw#2\par
%   \endgroup}
% \newcommand{\shu@makeabstract}{%
%   \shu@chapter*[]{\cabstractname}
%     \pagestyle{shu@headings}
%     \pagenumbering{Roman}
%   \shu@cabstract
%   \vskip12bp
%   \shu@put@keywords{\heiti\shu@ckeywords@title\enskip}{\shu@ckeywords}
%   \shu@chapter*[]{\eabstractname}
%   \shu@eabstract
%   \vskip12bp
%   \shu@put@keywords{%
%     \textbf{Keywords}:\enskip}{\shu@ekeywords}}
% \newenvironment{denotation}[1][2.5cm]{%
%   \shu@chapter*[]{\shu@denotation@name} % no tocline
%   \vskip-30bp\xiaosi[1.6]\begin{shu@denotation}[labelwidth=#1]
%  }{%
%   \end{shu@denotation}
%  }
%  \newlist{shu@denotation}{description}{1}
%  \setlist[shu@denotation]{%
%   nosep,
%   font=\normalfont,
%   align=left,
%   leftmargin=5cm,
%   rightmargin=2.5cm,
%   labelindent=0pt,
%   labelwidth=2.5cm,
%   labelsep*=0.5cm,
%   itemindent=0pt,
%  }
\newenvironment{acknowledgement}{\shu@chapter*[致谢]{致\quad 谢}}{}
\def\shu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\shu@listof#1{% #1: float type
  \@ifstar
    {\shu@chapter*[]{\csname list#1name\endcsname}\shu@starttoc{#1}}
    {\shu@chapter*{\csname list#1name\endcsname}\shu@starttoc{#1}}}
\renewcommand\listoffigures{\shu@listof{figure}}
\renewcommand*\l@figure{\addvspace{6bp}\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\shu@listof{table}}
\let\l@table\l@figure
\renewenvironment{thebibliography}[1]{%
   \shu@chapter*{\bibname}%
   \wuhao[1.5]
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\renewcommand{\makelabel}[1]{##1\hfill}
         \settowidth\labelwidth{1.1cm}
         \setlength{\labelsep}{0em}
         \setlength{\itemindent}{0pt}
         \setlength{\leftmargin}{\labelwidth+\labelsep}
         \addtolength{\itemsep}{-0.7em}
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy\frenchspacing
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \interlinepenalty4000%
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist\frenchspacing}
\let\shu@appendix\appendix
\renewenvironment{appendix}{%
  \let\title\shu@appendix@title
  \shu@appendix}{%
  \let\title\@gobble}
\newenvironment{publications}[1][\shu@publications@title]{%
 \shu@chapter*{#1}}{}
\newcommand{\researchitem}[1]{%
 \vspace{32bp}{\sihao\heiti\centerline{#1}}\par\vspace{14bp}}
\AtEndOfClass{\input{shuthesis.cfg}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `shuthesis.cls'.
