%%
%% This is file `xtuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% xtuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2020 by Ruini Xue <xueruini@gmail.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xtuthesis}
[2020/02/24 1.0.1 Xiangtan University Thesis Template]
\RequirePackage{ifxetex}
\RequireXeTeX
\hyphenation{Xtu-Thesis}
\def\xtuthesis{XtuThesis}
\def\version{1.0.1}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=xtu,
  prefix=xtu@,
  setkeys=\kvsetkeys}
\newcommand\xtu@error[1]{%
  \ClassError{xtuthesis}{#1}{}%
}
\newcommand\xtusetup{%
  \kvsetkeys{xtu}%
}
\newcommand\xtu@define@key[1]{%
  \kvsetkeys{xtu@key}{#1}%
}
\kv@set@family@handler{xtu@key}{%
  \@namedef{xtu@#1@@name}{#1}%
  \def\xtu@@default{}%
  \def\xtu@@choices{}%
  \kv@define@key{xtu@value}{name}{%
    \@namedef{xtu@#1@@name}{##1}%
  }%
  \kv@define@key{xtu@value}{code}{%
    \@namedef{xtu@#1@@code}{##1}%
  }%
  \@namedef{xtu@#1@@check}{}%
  \@namedef{xtu@#1@@code}{}%
  \@namedef{xtu@#1@@hook}{%
    \expandafter\ifx\csname\@currname.\@currext-h@@k\endcsname\relax
      \@nameuse{xtu@#1@@code}%
    \else
      \AtEndOfClass{%
        \@nameuse{xtu@#1@@code}%
      }%
    \fi
  }%
  \kv@define@key{xtu@value}{choices}{%
    \def\xtu@@choices{##1}%
    \@namedef{xtu@#1@@reset}{}%
    \@namedef{xtu@#1@@check}{%
      \@ifundefined{%
        ifxtu@\@nameuse{xtu@#1@@name}@\@nameuse{xtu@\@nameuse{xtu@#1@@name}}%
      }{%
        \xtu@error{Invalid value "#1 = \@nameuse{xtu@\@nameuse{xtu@#1@@name}}"}%
      }%
      \@nameuse{xtu@#1@@reset}%
      \@nameuse{xtu@\@nameuse{xtu@#1@@name}@\@nameuse{xtu@\@nameuse{xtu@#1@@name}}true}%
    }%
  }%
  \kv@define@key{xtu@value}{default}{%
    \def\xtu@@default{##1}%
  }%
  \kvsetkeys{xtu@value}{#2}%
  \@namedef{xtu@\@nameuse{xtu@#1@@name}}{}%
  \kv@set@family@handler{xtu@choice}{%
    \ifx\xtu@@default\@empty
      \def\xtu@@default{##1}%
    \fi
    \expandafter\newif\csname ifxtu@\@nameuse{xtu@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname xtu@#1@@reset\endcsname{%
      \@nameuse{xtu@\@nameuse{xtu@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{xtu@choice}{\xtu@@choices}%
  \expandafter\let\csname xtu@\@nameuse{xtu@#1@@name}\endcsname\xtu@@default
  \expandafter\ifx\csname xtu@\@nameuse{xtu@#1@@name}\endcsname\@empty\else
    \@nameuse{xtu@#1@@check}%
    \@nameuse{xtu@#1@@hook}%
  \fi
  \kv@define@key{xtu}{#1}{%
    \@namedef{xtu@\@nameuse{xtu@#1@@name}}{##1}%
    \@nameuse{xtu@#1@@check}%
    \@nameuse{xtu@#1@@hook}%
  }%
}
\newcommand\xtu@addto[2]{%
  \expandafter\g@addto@macro\csname xtu@#1@@code\endcsname{#2}%
}
\newif\ifxtu@degree@graduate
\newcommand\xtu@set@graduate{%
  \xtu@degree@graduatefalse
  \ifxtu@degree@doctor
    \xtu@degree@graduatetrue
  \fi
  \ifxtu@degree@master
    \xtu@degree@graduatetrue
  \fi
}
\xtu@define@key{
  degree = {
    choices = {
      bachelor,
      master,
      doctor,
      postdoc,
    },
    default = doctor,
    code = {\xtu@set@graduate},
  },
  degree-type = {
    choices = {
      academic,
      professional,
    },
    name = degree@type,
  },
  language = {
    choices = {
      chinese,
      english,
    },
  },
}
\DeclareBoolOption[true]{raggedbottom}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\PassOptionsToPackage{quiet}{xeCJK}
\LoadClass[a4paper,openany,UTF8,zihao=-4,scheme=plain]{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifxtu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\RequirePackage{CJKfntef}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{bibunits}
\RequirePackage{url}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\RequirePackage{geometry}
\geometry{
  a4paper, % 210 * 297mm
  nomarginpar,
}
\ifxtu@degree@bachelor
  \geometry{
    top        = 3.8cm,
    bottom     = 3.2cm,
    left       = 3.2cm,
    right      = 3cm,
    headheight = 0.5cm,
    headsep    = 1.8cm,
    footskip   = 1.45cm,
  }
\else
  \geometry{
    margin     = 3cm,
    headheight = 0.5cm,
    headsep    = 0.3cm,
    footskip   = 0.8cm,
  }
\fi
\RequirePackage{fancyhdr}
\RequirePackage{notoccite}
\let\xtu@cleardoublepage\cleardoublepage
\newcommand{\xtu@clearemptydoublepage}{%
  \clearpage{\pagestyle{xtu@empty}\xtu@cleardoublepage}}
\let\cleardoublepage\xtu@clearemptydoublepage
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \ifxtu@degree@bachelor
    \pagestyle{xtu@plain}
  \else
    \pagestyle{xtu@headings}
  \fi
  \pagenumbering{Roman}%
  \let\@tabular\xtu@tabular
}
\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \ifxtu@degree@bachelor\pagestyle{xtu@plain}\else\pagestyle{xtu@headings}\fi}
\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\newcommand\xtu@fontset{\csname g__ctex_fontset_tl\endcsname}
\ifthenelse{\equal{\xtu@fontset}{fandol}}{
  \setmainfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyretermes}
  \setsansfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyreheros}
  \setmonofont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
  ]{texgyrecursor}
}{
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \ifthenelse{\equal{\xtu@fontset}{mac}}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  nabla      = upright,
  partial    = upright,
}
\IfFontExistsTF{XITSMath-Regular.otf}{
  \setmathfont[
    Extension    = .otf,
    BoldFont     = XITSMath-Bold,
    StylisticSet = 8,
  ]{XITSMath-Regular}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{XITSMath-Regular.otf}
}{
  \setmathfont[
    Extension    = .otf,
    BoldFont     = *bold,
    StylisticSet = 8,
  ]{xits-math}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{xits-math.otf}
}
\ifthenelse{\equal{\xtu@fontset}{windows}}{
  \xeCJKsetup{EmboldenFactor=2}
  \IfFileExists{C:/bootfont.bin}{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi_GB2312]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi_GB2312}
  }{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi}
  }
  \setCJKsansfont[AutoFakeBold]{SimHei}
  \setCJKfamilyfont{zhsong}[AutoFakeBold]{SimSun}
  \setCJKfamilyfont{zhhei}[AutoFakeBold]{SimHei}
}{}
\ifthenelse{\equal{\xtu@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold,
    ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip=12bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=12bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\xtu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\xtu@def@fontsize{chuhao}{42bp}
\xtu@def@fontsize{xiaochu}{36bp}
\xtu@def@fontsize{yihao}{26bp}
\xtu@def@fontsize{xiaoyi}{24bp}
\xtu@def@fontsize{erhao}{22bp}
\xtu@def@fontsize{xiaoer}{18bp}
\xtu@def@fontsize{sanhao}{16bp}
\xtu@def@fontsize{xiaosan}{15bp}
\xtu@def@fontsize{sihao}{14bp}
\xtu@def@fontsize{banxiaosi}{13bp}
\xtu@def@fontsize{xiaosi}{12bp}
\xtu@def@fontsize{dawu}{11bp}
\xtu@def@fontsize{wuhao}{10.5bp}
\xtu@def@fontsize{xiaowu}{9bp}
\xtu@def@fontsize{liuhao}{7.5bp}
\xtu@def@fontsize{xiaoliu}{6.5bp}
\xtu@def@fontsize{qihao}{5.5bp}
\xtu@def@fontsize{bahao}{5bp}
\newcommand\xtu@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\xtu@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
  }%
}
\newcommand\xtu@setdefaultlanguage{%
  \ifxtu@language@chinese
    \xtu@setchinese
  \else
    \xtu@setenglish
  \fi
}
\ifxtu@language@chinese
  \ctexset{
    chapter/name   = {第,章},
    appendixname   = 附录,
    contentsname   = {目\hspace{\ccwd}录},
    listfigurename = 插图索引,
    listtablename  = 表格索引,
    figurename     = 图,
    tablename      = 表,
    bibname        = 参考文献,
    indexname      = 索引,
  }
  \newcommand\xtu@denotation@name{主要符号对照表}
  \newcommand\listequationname{公式索引}
  \newcommand\equationname{公式}
  \newcommand\xtu@assumption@name{假设}
  \newcommand\xtu@definition@name{定义}
  \newcommand\xtu@proposition@name{命题}
  \newcommand\xtu@lemma@name{引理}
  \newcommand\xtu@theorem@name{定理}
  \newcommand\xtu@axiom@name{公理}
  \newcommand\xtu@corollary@name{推论}
  \newcommand\xtu@exercise@name{练习}
  \newcommand\xtu@example@name{例}
  \newcommand\xtu@remark@name{注释}
  \newcommand\xtu@problem@name{问题}
  \newcommand\xtu@conjecture@name{猜想}
  \newcommand\xtu@proof@name{证明}
  \newcommand\xtu@theorem@separator{：}
  \newcommand\xtu@ack@name{致\hspace{\ccwd}谢}
  \ifxtu@degree@bachelor
    \newcommand\xtu@resume@title{在学期间参加课题的研究成果}
  \else
    \ifxtu@degree@postdoc
      \newcommand\xtu@resume@title{个人简历、发表的学术论文与科研成果}
    \else
      \newcommand\xtu@resume@title{个人简历、在学期间发表的学术论文与研究成果}
    \fi
  \fi
\else
  \newcommand\xtu@denotation@name{Nomenclature}
  \newcommand\listequationname{List of Equations}
  \newcommand\equationname{Equation}
  \newcommand\xtu@assumption@name{Assumption}
  \newcommand\xtu@definition@name{Definition}
  \newcommand\xtu@proposition@name{Proposition}
  \newcommand\xtu@lemma@name{Lemma}
  \newcommand\xtu@theorem@name{Theorem}
  \newcommand\xtu@axiom@name{Axiom}
  \newcommand\xtu@corollary@name{Corollary}
  \newcommand\xtu@exercise@name{Exercise}
  \newcommand\xtu@example@name{Example}
  \newcommand\xtu@remark@name{Remark}
  \newcommand\xtu@problem@name{Problem}
  \newcommand\xtu@conjecture@name{Conjecture}
  \newcommand\xtu@proof@name{proof}
  \newcommand\xtu@theorem@separator{: }
  \newcommand\xtu@ack@name{Acknowledgements}
  \ifxtu@degree@bachelor
    \newcommand\xtu@resume@title{Research Achievements}
  \else
    \newcommand\xtu@resume@title{Resume, Publications and Research Achievements}
  \fi
\fi
\fancypagestyle{xtu@empty}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{xtu@plain}{%
  \fancyhead{}
  \fancyfoot[C]{\xiaowu\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{xtu@headings}{%
  \fancyhead{}
  \fancyhead[C]{\wuhao\normalfont\leftmark}
  \fancyfoot{}
  \fancyfoot[C]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true}
\setlist{nosep}
\ifthenelse{\equal{\xtu@fontset}{mac}}{
  \newfontfamily\xtu@circlefont{Songti SC Light}
}{
  \ifthenelse{\equal{\xtu@fontset}{windows}}{
    \newfontfamily\xtu@circlefont{SimSun}
  }{
    \IfFontExistsTF{XITS-Regular.otf}{
      \newfontfamily\xtu@circlefont{XITS-Regular.otf}
    }{
      \newfontfamily\xtu@circlefont{xits-regular.otf}
    }
  }
}
\def\xtu@textcircled#1{%
  \ifnum\value{#1} >9%
    \ClassError{xtuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}%
  \fi
  {\xtu@circlefont\symbol{\the\numexpr\value{#1}+"245F\relax}}%
}
\renewcommand{\thefootnote}{\xtu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\xtu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\xtu@footnotesize\footnotesize
\renewcommand\footnotesize{\xtu@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\xtu@makefnmark\@makefnmark
\def\xtu@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\xtu@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\xtu@makefnmark}{}{}
\ifxtu@language@chinese
  \def\mathellipsis{\cdots}
\fi
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\removenolimits{%
  \int\iint\iiint\iiiint\oint\oiint\oiiint
  \intclockwise\varointclockwise\ointctrclockwise\sumint
  \intbar\intBar\fint\cirfnint\awint\rppolint
  \scpolint\npolint\pointint\sqint\intlarhk\intx
  \intcap\intcup\upint\lowint
}
\AtBeginDocument{%
  \renewcommand{\Re}{\operatorname{Re}}%
  \renewcommand{\Im}{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\newcommand\square{\mdlgwhtsquare}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\make@df@tag{\@ifstar\xtu@make@df@tag@@\make@df@tag@@@}
\def\xtu@make@df@tag@@#1{\gdef\df@tag{\xtu@maketag{#1}\def\@currentlabel{#1}}}
\iffalse
\ifxtu@degree@bachelor
  \def\xtu@maketag#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)}}
  \def\tagform@#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)\equcaption{#1}}}
\fi
\fi
\def\xtu@maketag#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)}}
\def\tagform@#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)\equcaption{#1}}}
\renewcommand{\eqref}[1]{\textup{(\ref{#1})}}
\setlength{\floatsep}{12bp \@plus 2bp \@minus 4bp}
\setlength{\textfloatsep}{12bp}
\setlength{\intextsep}{12bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ifxtu@degree@bachelor
  \g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
  \g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\fi
\let\old@tabular\@tabular
\def\xtu@tabular{\dawu[1.5]\old@tabular}
\DeclareCaptionFont{xtu}{\dawu[1.3]}
\DeclareCaptionLabelSeparator{xtu}{\hspace{\ccwd}}
\captionsetup{
  font           = xtu,
  labelsep       = xtu,
  skip           = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
\captionsetup[sub]{font=xtu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}
\ifxtu@degree@bachelor
  \newcommand{\cabstractname}{中文摘要}
  \newcommand{\eabstractname}{ABSTRACT}
\else
  \newcommand{\cabstractname}{摘\hspace{\ccwd}要}
  \newcommand{\eabstractname}{Abstract}
\fi
\AtBeginDocument{%
  \pagestyle{xtu@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\xtu@chapter@titleformat[1]{%
  \ifxtu@degree@bachelor #1\else%
    \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
  \fi}
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={\ifxtu@degree@bachelor xtu@plain\else xtu@headings\fi},
    beforeskip={\ifxtu@degree@bachelor 15bp\else 9bp\fi},
    aftername=\hskip\ccwd,
    afterskip={\ifxtu@degree@bachelor 20bp\else 24bp\fi},
    format={\centering\sffamily\ifxtu@degree@bachelor\xiaosan[1.333]\else\sanhao[1]\fi},
    nameformat=\relax,
    numberformat=\relax,
    titleformat=\xtu@chapter@titleformat,
    lofskip=0pt,
    lotskip=0pt,
  },
  section={
    afterindent=true,
    beforeskip={\ifxtu@degree@bachelor 25bp\else 24bp\fi\@plus 1ex \@minus .2ex},
    afterskip={\ifxtu@degree@bachelor 12bp\else 6bp\fi \@plus .2ex},
    format={\sffamily\ifxtu@degree@bachelor\sihao[1.286]\else\sihao[1.429]\fi},
  },
  subsection={
    afterindent=true,
    beforeskip={\ifxtu@degree@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifxtu@degree@bachelor\xiaosi[1.25]\else\banxiaosi[1.538]\fi},
    numberformat={\sffamily\ifxtu@degree@bachelor\banxiaosi[1.154]\else\banxiaosi[1.538]\fi},
  },
  subsubsection={
    afterindent=true,
    beforeskip={\ifxtu@degree@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifxtu@degree@bachelor\xiaosi[1.25]\else\xiaosi[1.667]\fi},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true}
\newcommand\xtu@pdfbookmark[2]{}
\newcommand\xtu@phantomsection{}
\NewDocumentCommand\xtu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{xtuthesis}{You have to use the star form: \string\xtu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \xtu@pdfbookmark{0}{#3}%
    }{%
      \xtu@phantomsection
      \addcontentsline{toc}{chapter}{#3}%
    }%
  }{%
    \xtu@phantomsection
    \addcontentsline{toc}{chapter}{#3}%
  }%
  \ifxtu@degree@bachelor\ctexset{chapter/beforeskip=25bp}\fi
  \chapter*{#3}%
  \ifxtu@degree@bachelor\ctexset{chapter/beforeskip=15bp}\fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}{%
      \@mkboth{}{}%
    }{%
      \@mkboth{#4}{#4}%
    }%
  }{%
    \@mkboth{#3}{#3}%
  }%
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \xtu@chapter*[]{\contentsname}
  \ifxtu@degree@bachelor\xiaosi[1.667]\else\xiaosi[1.65]\fi\@starttoc{toc}\normalsize}
\def\@pnumwidth{2em}
\def\@tocrmarg{\@pnumwidth}
\def\@dotsep{1}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \ifxtu@degree@bachelor\vskip 6bp\else\vskip 4bp\fi \@plus\p@
    \setlength\@tempdima{4em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \begingroup
        \ifxtu@degree@graduate
          \sffamily
        \else
          \ifxtu@degree@bachelor
            \heiti
          \fi
        \fi
        #1%
      \endgroup
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill%
      \nobreak #2\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}
\renewcommand*\l@section{%
  \@dottedtocline{1}{\ccwd}{2.1em}}
\renewcommand*\l@subsection{%
  \@dottedtocline{2}{\ifxtu@degree@bachelor 1.5\ccwd\else 2\ccwd\fi}{3em}}
\renewcommand*\l@subsubsection{%
  \@dottedtocline{3}{\ifxtu@degree@bachelor 2.4em\else 3.5em\fi}{3.8em}}
\xtu@define@key{
  title = {
    default = {标题},
  },
  title* = {
    default = {Title},
    name    = title@en,
  },
  author = {
    default = {姓名},
  },
  author* = {
    default = {Name of author},
    name    = author@en,
  },
  supervisor = {
    default = {导师姓名},
  },
  supervisor* = {
    default = {Name of supervisor},
    name    = supervisor@en,
  },
  associate-supervisor = {
    name = associate@supervisor,
  },
  associate-supervisor* = {
    name = associate@supervisor@en,
  },
  joint-supervisor = {
    name = joint@supervisor,
  },
  joint-supervisor* = {
    name = joint@supervisor@en,
  },
  degree-name = {
    default = {理学博士},
    name    = degree@name,
  },
  degree-name* = {
    default = {Doctor of Philosophy},
    name    = degree@name@en,
  },
  department = {
    default = {数学与计算科学学院},
  },
  discipline = {
    % default = {数学},
  },
  discipline* = {
    % default = {Computer Science and Technology},
    name    = discipline@en,
  },
  research = {
    % default = {计算流体力学},
  },
  research* = {
    % default = {Computational Fluid Dynamics},
    name    = research@en,
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  secret-level = {
    name = secret@level,
  },
  secret-year = {
    name = secret@year,
  },
  clc,
  udc,
  id,
  discipline-level-1 = {
    default = {一级学科名称},
    name    = discipline@level@i,
  },
  discipline-level-2 = {
    default = {二级学科名称},
    name    = discipline@level@ii,
  },
  start-date = {
    name    = start@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  end-date = {
    name    = end@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
}
\newcommand\xtu@format@date[2]{%
  \edef\xtu@@date{#2}%
  \def\xtu@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\xtu@@process@date\xtu@@date\@nil
}
\newcommand\xtu@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\xtu@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\xtu@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\xtu@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\xtu@date@en@short[3]{\xtu@date@month{#2}, #1}
\newcommand\xtu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\xtu@CJKunderline[2][6em]{\CJKunderline*{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\xtu@fixed@box[2]{%
  \begingroup
    \def\CJKglue{\hskip 0pt plus 2filll minus 1filll}%
    \makebox[#1][l]{#2}%
  \endgroup
}
\newbox\xtu@stretch@box
\newcommand\xtu@stretch[2]{%
  \sbox\xtu@stretch@box{#2}%
  \ifdim \wd\xtu@stretch@box < #1\relax
    \begingroup
      \def\CJKglue{\hskip 0pt plus 2filll}%
      \makebox[#1][l]{#2}%
    \endgroup
  \else
    \box\xtu@stretch@box
  \fi
}
\newbox\xtu@pad@box
\newcommand\xtu@pad[2]{%
  \sbox\xtu@pad@box{#2}%
  \ifdim \wd\xtu@pad@box < #1\relax
    \makebox[#1][l]{\box\xtu@pad@box}%
  \else
    \box\xtu@pad@box
  \fi
}
\newcounter{xtu@csl@count}
\newcommand\xtu@name@title@process[1]{%
  \ifcase\c@xtu@csl@count  % == 0
    \gdef\xtu@@name{#1}%
  \or  % == 1
    \gdef\xtu@@title{#1}%
  \fi
  \stepcounter{xtu@csl@count}%
}
\newcommand\xtu@name@title@format[2]{%
  \xtu@pad{3cm}{\xtu@stretch{4em}{#1}}%
  \xtu@stretch{3em}{#2}%
}
\newcommand\xtu@name@title[1]{%
  \setcounter{xtu@csl@count}{0}%
  \gdef\xtu@@name{}%
  \gdef\xtu@@title{}%
  \expandafter\comma@parse\expandafter{#1}{\xtu@name@title@process}%
  \xtu@name@title@format{\xtu@@name}{\xtu@@title}%
}
\renewcommand\maketitle{%
  \cleardoublepage
  \pagestyle{xtu@empty}%
  \pagenumbering{Alph}%
  \xtu@pdfbookmark{-1}{\xtu@title}%
  \ifxtu@degree@bachelor
    \xtu@coverpage % 装订封面
  \else
    \ifxtu@degree@master
      \xtu@coverpage % 装订封面
    \else
      \ifxtu@degree@doctor
        \xtu@coverpage % 装订封面
      \fi
    \fi
  \fi
  \xtu@titlepage
  \ifxtu@degree@graduate
    \cleardoublepage
    \xtu@titlepage@en
  \fi
  \clearpage
}
\newcommand\xtu@coverpage{%
  \newgeometry{
    top     = 1.0cm,
    bottom  = 4.0cm,
    hmargin = 2.cm,
  }%
  \null\vskip 0.4cm%
    { %\sihao[2.6]%
      \xtu@stretch{4.1em}{\bf 学校代码}\xtu@underline[3.2cm]{10530}\hfill
      \xtu@stretch{4.1em}{\bf 学号}\xtu@underline[3.2cm]{\xtu@id}\vskip0.2cm
      \xtu@stretch{4.1em}{\bf 分类号}\xtu@underline[3.2cm]{\xtu@clc}\hfill
      \xtu@stretch{4.1em}{\bf 密级}\xtu@underline[3.2cm]{\xtu@secret@level}\par
    }%
  \null\vskip 1.5cm%
  \begingroup
  {
    \centering
    \begingroup
         \includegraphics[width=0.6\linewidth]{xtuthesis-logo.pdf}%
      \par
      \endgroup
  }
  \endgroup
  \null\vskip 0.2cm%
  \begingroup
  \centering
  \parbox[t][2cm][t]{\textwidth}{%
    \ifxtu@degree@bachelor
      \centering \heiti\zihao{0}\ziju{0.3}{学士学位论文}
    \else
      \ifxtu@degree@master
        \centering \heiti\zihao{0}\ziju{0.3}{硕士学位论文}
      \else
       \ifxtu@degree@doctor
         \centering \heiti\zihao{0}\ziju{0.3}{博士学位论文}
       \fi
     \fi
   \fi
  }\par
  \vskip 0.8cm%
  {\xtu@titlepage@title}%
   \vskip 0.8cm%
   \parbox[t][7.25cm][t]{\textwidth}{\centering\xtu@titlepage@info}\par
   \vskip 0.6cm
   \vfill
   \parbox[t][1.03cm][t]{\textwidth}{\centering\xtu@titlepage@date}\par
   \endgroup
   \clearpage
   \restoregeometry
}

\newcommand\xtu@titlepage{%
  \ifxtu@degree@graduate
    \ifxtu@degree@type@academic
      \xtu@titlepage@graduate@academic
    \else
      \ifx\xtu@discipline\@empty
        \xtu@titlepage@graduate@professional
      \else
        \xtu@titlepage@graduate@academic
      \fi
    \fi
  \else
    \ifxtu@degree@bachelor
      \xtu@titlepage@bachelor
    \else
      \ifxtu@degree@postdoc
        \xtu@cover@postdoc
        \cleardoublepage
        \xtu@titlepage@postdoc
      \fi
    \fi
  \fi
}
\newcommand\xtu@titlepage@graduate@academic{%
  \newgeometry{
    top     = 2cm,
    bottom  = 6cm,
    hmargin = 3.5cm,
  }%
\null\vskip 0.45cm %%changed by H.Z. Yuan
%%%  \null\vskip 0.2cm%    %%changed by H.Z. Yuan
 \begingroup
    \centering
    \vskip 1.5cm%
    {\xtu@titlepage@title}%
    \vskip 0.85cm%
    \xtu@titlepage@degree
    \vfill
    \parbox[t][7.25cm][t]{\textwidth}{\centering\xtu@titlepage@info}\par
    \parbox[t][1.03cm][t]{\textwidth}{\centering\xtu@titlepage@date}\par
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\xtu@titlepage@graduate@professional{%
  \newgeometry{
    top     = 2cm,
    bottom  = 6cm,
    hmargin = 3.5cm,
  }%
  \null\vskip 0.45cm %%changed by H.Z. Yuan
%%%  \null\vskip 0.45cm% %%deleted by H.Z. Yuan
 \begingroup
    \centering
    \vskip 1.5cm%
    {\sffamily\yihao[1.575]\xtu@title\par}%
    \vskip 0.9cm%
    \xtu@titlepage@degree
    \vfill
    \parbox[t][5.28cm][t]{\textwidth}{\centering\xtu@titlepage@info}\par
    \parbox[t][1.25cm][t]{\textwidth}{\centering\xtu@titlepage@date}\par
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\xtu@titlepage@secret{%
  \sffamily\CJKfamily+{}\sanhao
  \ifx\xtu@secret@level\@empty
    \phantom{秘密}%
  \else
    \xtu@secret@level★\makebox[3em][c]{\xtu@secret@year}年%
  \fi\par
}
\newcommand\xtu@titlepage@title{%
  \sffamily\yihao[1.8]\xtu@title\par
}
\newcommand\xtu@titlepage@degree{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \CJKfamily+{}\xiaoer
    (申请湘潭大学\xtu@degree@name\ifxtu@degree@type@professional 专业\fi 学位论文)\par
  \endgroup
}
\newcommand\xtu@titlepage@info{%
  \ifxtu@degree@doctor
    \xtu@titlepage@info@doctor
  \else
    \xtu@titlepage@info@master
  \fi
}
\newcommand\xtu@cover@info@tabular[4]{%
  \def\xtu@cover@item##1##2##3{%
    \ifx##3\@empty\else
      \xtu@pad{#2}{\xtu@fixed@box{#1}{##1}}%
%%      \xtu@pad{#3}{：}%  %% deleted by H.Z. Yuan
%%      ##2{##3}\\         %% deleted by H.Z. Yuan
      {\underline{\makebox[6.5cm][c]{##2{##3}}}}\\ %% added by H.Z. Yuan
    \fi
  }%
  \begin{tabular}{l}%
    #4%
  \end{tabular}
}

\newcommand\xtu@titlepage@info@doctor{%
  \fangsong\sanhao[1.95]%
  \xtu@cover@info@tabular{2.8cm}{2.8cm}{0.82cm}{%
    \xtu@cover@item{学位申请人}{\xtu@name@title}{\xtu@author}%
    \xtu@cover@item{指导教师}{\xtu@name@title}{\xtu@supervisor}%
    \xtu@cover@item{副指导教师}{\xtu@name@title}{\xtu@associate@supervisor}%
    \xtu@cover@item{联合指导教师}{\xtu@name@title}{\xtu@joint@supervisor}%
    \xtu@cover@item{学院名称}{}{\xtu@department}%
    \xtu@cover@item{学科专业}{\xtu@name@title}{\xtu@discipline}%
    \xtu@cover@item{研究方向}{\xtu@name@title}{\xtu@research}%
  }\par
}

\newcommand\xtu@titlepage@info@master{%
  \fangsong\sanhao[1.95]%
  \xtu@cover@info@tabular{5.5em}{3.6cm}{0.82cm}{%
    \xtu@cover@item{学位申请人}{\xtu@name@title}{\xtu@author}%
    \xtu@cover@item{指导教师}{\xtu@name@title}{\xtu@supervisor}%
    \xtu@cover@item{副指导教师}{\xtu@name@title}{\xtu@associate@supervisor}%
    \xtu@cover@item{联合指导教师}{\xtu@name@title}{\xtu@joint@supervisor}%
    \xtu@cover@item{学院名称}{}{\xtu@department}%
    \xtu@cover@item{学科专业}{\xtu@name@title}{\xtu@discipline}%
    \xtu@cover@item{研究方向}{\xtu@name@title}{\xtu@research}%
  }\par
}

\newcommand\xtu@titlepage@date{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \sanhao\xtu@format@date{\xtu@date@zh@short}{\xtu@date}\par
  \endgroup
}
\newcommand{\xtu@titlepage@en}{%
  \newgeometry{
    top     = 5.5cm,
    bottom  = 5cm,
    hmargin = 3.6cm,
  }%
  \ifxtu@degree@type@academic
    \xtu@titlepage@en@graduate@academic
  \else
    \xtu@titlepage@en@graduate@professional
  \fi
  \clearpage
  \restoregeometry
}
\newcommand\xtu@titlepage@en@graduate@academic{%
  \begingroup
    \centering
    \null\vskip -0.7cm%
    \xtu@titlepage@en@title
    \vfill
    \sanhao[1.725]%
    \xtu@titlepage@en@degree
    \vskip 0.13cm%
    in\par
    \vskip 0.1cm%
    {\bfseries\sffamily\xtu@discipline@en\par}
    \vskip 0.7cm%
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\xtu@author@en\par}%
    \vskip 0.14cm%
    \parbox[t][3.07cm][t]{\textwidth}{%
      \centering\xiaosan[2.1]%
      \xtu@titlepage@en@supervisor
    }\par
    \xtu@titlepage@en@date
    \vskip 0.65cm%
  \endgroup
}
\newcommand\xtu@titlepage@en@graduate@professional{%
  \begingroup
    \centering
    \null\vskip -0.7cm%
    \xtu@titlepage@en@title
    \vfill
    \sanhao[1.725]%
    \xtu@titlepage@en@degree
    \vskip 1.1cm%
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\xtu@author@en\par}%
    \ifx\xtu@discipline@en\empty
      \vskip 1.95cm%
    \else
      \vskip -0.1cm%
      {\sffamily\bfseries(\xtu@discipline@en)\par}%
      \vskip 1.1cm%
    \fi
    \parbox[t][3.37cm][t]{\textwidth}{%
      \centering\xiaosan[1.82]%
      \xtu@titlepage@en@supervisor
    }\par
    \xtu@titlepage@en@date
    \vskip 0.3cm%
  \endgroup
}
\newcommand\xtu@titlepage@en@title{%
  \begingroup
    \sffamily\bfseries\fontsize{20bp}{31bp}\selectfont
    \xtu@title@en\par
  \endgroup
}
\newcommand\xtu@thesis@name@en{%
  \ifxtu@degree@master
    Thesis%
  \else
    Dissertation%
  \fi
}
\newcommand\xtu@titlepage@en@degree{%
  \xtu@thesis@name@en{} Submitted to\par
  {\bfseries Xiangtan University\par}%
  in partial fulfillment of the requirement\par
  for the
  \ifxtu@degree@type@professional
    professional
  \fi
  degree of\par
  {\sffamily\bfseries\xtu@degree@name@en\par}%
}
\newcommand\xtu@titlepage@en@supervisor{%
  \begin{tabular}{r@{\makebox[0.71cm][l]{:}}l}%
    \xtu@thesis@name@en{} Supervisor & \xtu@supervisor@en     \\
    \ifx\xtu@associate@supervisor@en\@empty\else
      Associate Supervisor            & \xtu@associate@supervisor@en \\
    \fi
    \ifx\xtu@joint@supervisor@en\@empty\else
      Cooperate Supervisor            & \xtu@joint@supervisor@en   \\
    \fi
  \end{tabular}%
}
\newcommand\xtu@titlepage@en@date{%
  \begingroup
    \sffamily\bfseries\sanhao
    \xtu@format@date{\xtu@date@en@short}{\xtu@date}\par
  \endgroup
}
\newcommand\xtu@titlepage@bachelor{%
  \newgeometry{
    vmargin = 2.54cm,
    hmargin = 3.17cm,
  }%
  \null\vskip 0.44cm%
  \begingroup
    \centering
    \parbox[t][2cm][t]{\textwidth}{%
      \hfill
      \sffamily\CJKfamily+{}\xiaosi
      \ifx\xtu@secret@level\@empty
        \phantom{秘密}%
      \else
        \xtu@secret@level\makebox[3em][c]{\xtu@secret@year}年%
      \fi\par
    }\par
    \begingroup
      \ifcsname lishu\endcsname
        \lishu\yihao\ziju{0.5}湘潭大学%
      \else
        \includegraphics{xtu-text-logo.pdf}%
      \fi
      \par
    \endgroup
    \vskip 0.94cm%
    {\sffamily\bfseries\xiaochu\ziju{0.5}综合论文训练\par}%
    \vskip 2.3cm%
    \parbox[t][2.4cm][t]{\textwidth}{%
      \heiti\xiaoer[1.56]%
      \parindent=2em%
      \hangindent=5em%
      \makebox[3em][l]{题目：}%
      \yihao[1.56]%
      \CJKunderline[skip=false, thickness=0.05em, depth=0.12em]{\xtu@title}\par
    }\par
    \vskip 2.5cm%
    \parbox[t][6.0cm][t]{\textwidth}{%
      \fangsong\sanhao[2.3]%
      \leftskip=2.5cm%
      \parindent=\z@
      \def\xtu@cover@item##1##2##3{%
        \ifx##3\@empty\else
          \xtu@fixed@box{4em}{##1}：##2{##3}\\
        \fi
      }%
      \def\xtu@name@title@format##1##2{%
        \xtu@stretch{3em}{##1}\quad ##2%
      }
      \xtu@cover@item{系别}{}{\xtu@department}%
      \xtu@cover@item{专业}{}{\xtu@discipline}%
      \xtu@cover@item{姓名}{\xtu@name@title}{\xtu@author}%
      \xtu@cover@item{指导教师}{\xtu@name@title}{\xtu@supervisor}%
      \xtu@cover@item{辅导教师}{\xtu@name@title}{\xtu@associate@supervisor}%
    }\par
    {\xiaosi\xtu@format@date{\xtu@date@zh@digit}{\xtu@date}\par}%
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\xtu@cover@postdoc{%
  \begin{center}%
    \renewcommand\ULthickness{0.7pt}%
    \vspace*{0.35cm}%
    {\sihao[2.6]%
      \xtu@stretch{3.1em}{分类号}\xtu@underline[3.7cm]{\xtu@clc}\hfill
      密级\xtu@underline[3.7cm]{\xtu@secret@level}\par
      \xtu@stretch{3.1em}{U D C}\xtu@underline[3.7cm]{\xtu@udc}\hfill
      编号\xtu@underline[3.7cm]{\xtu@id}\par
    }%
    \vskip 3.15cm%
    {\sffamily\bfseries\xiaoer[2.6]%
      {\ziju{1.5}湘潭大学\par}%
      {\ziju{0.5}博士后研究工作报告\par}%
    }%
    \vskip 0.2cm%
    \parbox[t][4.0cm][c]{\textwidth}{%
      \centering\sihao[3.46]\CJKunderline*[depth=1em]{\xtu@title}\par
    }\par
    \vskip 0.4cm%
    {\xiaosi\xtu@author\par}%
    \vskip 1.4cm%
    {\xiaosi[1.58]\xeCJKsetup{underline/depth=0.9em}%
      工作完成日期\quad
      \xtu@CJKunderline[5.9cm]{%
        \xtu@format@date{\xtu@date@zh@digit@short}{\xtu@start@date}—%
        \xtu@format@date{\xtu@date@zh@digit@short}{\xtu@end@date}
      }\par
      \vskip 0.55cm%
      报告提交日期\quad
      \xtu@CJKunderline[5.9cm]{\xtu@format@date{\xtu@date@zh@digit@short}{\xtu@date}}\par
    }%
    \vskip 0.45cm%
    {\xiaosi[2]{\ziju{1}湘潭大学}\quad （湘潭）\par}%
    \vskip 0.25cm%
    {\xiaosi[2]\xtu@format@date{\xtu@date@zh@digit@short}{\xtu@date}\par}%
  \end{center}%
}
\newcommand\xtu@titlepage@postdoc{%
  \begin{center}%
    \vspace*{1.5cm}%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sanhao[1.95]\xtu@title\par
    }\par
    \vskip 0.15cm%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sihao[1.36]\xtu@title@en\par
    }\par
    \vskip 0.4cm%
    {\xiaosi[2.6]%
      \begin{tabular}{l@{\quad}l}%
        \xtu@stretch{11em}{博士后姓名}                  & \xtu@author           \\
        \xtu@stretch{11em}{流动站（一级学科）名称}      & \xtu@discipline@level@i  \\
        \xtu@stretch{11em}{专\quad{}业（二级学科）名称} & \xtu@discipline@level@ii \\
      \end{tabular}\par
    }%
    \vskip 2.7cm%
    {\xiaosi[2.6]%
      研究工作起始时间\quad\xtu@format@date{\xtu@date@zh@digit}{\xtu@start@date}\par
      \vskip 0.1cm%
      研究工作期满时间\quad\xtu@format@date{\xtu@date@zh@digit}{\xtu@end@date}\par
    }%
    \vskip 2.1cm%
    {\xiaosi[2.6]湘潭大学人事部（北京）\par}%
    \vskip 0.6cm%
    {\wuhao\xtu@format@date{\xtu@date@zh@digit@short}{\xtu@date}\par}%
  \end{center}%
}
\newcommand{\xtu@declaration}{
本人郑重声明：所呈交的学位论文，是本人在导师指导下，独立
进行研究工作所取得的成果。尽我所知，除文中已经注明引用的内容
外，本学位论文的研究成果不包含任何他人享有著作权的内容。对本
论文所涉及的研究工作做出贡献的其他个人和集体，均已在文中以明
确方式标明。
 }
\newcommand{\xtu@authorization}{%
本学位论文作者完全了解学校有关保留、使用学位论文的规定，
同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，
允许论文被查阅和借阅。本人授权湘潭大学可以将本学位论文的全部
或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等
复制手段保存和汇编本学位论文。
}
\newcommand{\xtu@authorizationaddon}{%
（涉密论文按学校规定处理）}
\newcommand{\xtu@authorsig}{\ifxtu@degree@bachelor 签\hskip1em名：\else 作者签名：\fi}
\newcommand{\xtu@teachersig}{导师签名：}
\newcommand{\xtu@frontdate}{%
  日\ifxtu@degree@bachelor\hspace{1em}\else\hspace{2em}\fi 期：}
\newcommand\declareandcopyrightpage[1][]{%
  \ifxtu@degree@postdoc\relax\else
    \ifxtu@degree@bachelor\clearpage\else\cleardoublepage\fi%
    \def\xtu@@tmp{#1}
    \ifx\xtu@@tmp\@empty
      \ifxtu@degree@bachelor\xtu@declarationauthorization@mk\else%
        \begin{list}{}{%
          \topsep\z@%
          \listparindent\parindent%
          \parsep\parskip%
          \setlength{\leftmargin}{0.9mm}%
          \setlength{\rightmargin}{0.9mm}}%
        \item[]\xtu@declarationauthorization@mk%
        \end{list}%
      \fi%
    \else
      \includepdf{#1}%
    \fi
  \fi
  \cleardoublepage
}
\newcommand{\xtu@declarationauthorization@mk}{%
  \ifxtu@degree@bachelor\vspace*{0.2cm}\else\vspace*{0.2cm}\fi % shit code!
  \begin{center}\yihao\heiti 湘潭大学\end{center}
  \vskip0.2cm
  \begin{center}\erhao\heiti 学位论文原创性声明\end{center}
  \ifxtu@degree@bachelor\vskip5pt\else\vskip0pt\sihao[2.03]\fi\par
  \xtu@declaration\par
  \ifxtu@degree@bachelor\vskip0.7cm\else\vskip0.7cm\fi
  \begingroup
    \parindent0pt\xiaosi
      \hspace*{1.5cm}\xtu@authorsig\xtu@underline[7em]\relax\hfill%
                     \xtu@frontdate\xtu@underline[7em]\relax\hspace*{1cm}\\[3pt]
  \endgroup
  \vskip1.2cm
  \begin{center}\erhao\heiti 学位论文使用授权的说明\end{center}
  \ifxtu@degree@bachelor\vskip5pt\else\vskip0pt\sihao[2.03]\fi\par
  \xtu@authorization\par
  \textbf{\xtu@authorizationaddon}\par
  \ifxtu@degree@bachelor\vskip0.7cm\else\vskip0.7cm\fi
  \ifxtu@degree@bachelor
    \indent\mbox{\xtu@authorsig\xtu@underline\relax%
    \xtu@teachersig\xtu@underline\relax\xtu@frontdate\xtu@underline\relax}
  \else
    \begingroup
      \parindent0pt\xiaosi
      \hspace*{1.5cm}\xtu@authorsig\xtu@underline[7em]\relax\hfill%
                     \xtu@teachersig\xtu@underline[7em]\relax\hspace*{1cm}\\[3pt]
      \hspace*{1.5cm}\xtu@frontdate\xtu@underline[7em]\relax\hfill%
                     \xtu@frontdate\xtu@underline[7em]\relax\hspace*{1cm}
      \endgroup
  \fi}
\xtu@define@key{
  keywords,
  keywords* = {
    name = keywords@en,
  },
}
\newcommand\xtu@clist@use[2]{%
  \def\xtu@@tmp{}%
  \kv@set@family@handler{xtu@clist}{%
    \ifx\xtu@@tmp\@empty
      \def\xtu@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \kvsetkeys@expandafter{xtu@clist}{#1}%
}
\newbox\xtu@kw
\newcommand\xtu@put@keywords[2]{%
  \begingroup
    \setbox\xtu@kw=\hbox{#1}
    \ifxtu@degree@bachelor\indent\else\noindent\hangindent\wd\xtu@kw\hangafter1\fi%
    \box\xtu@kw#2\par
  \endgroup}
\newenvironment{abstract}{%
  \ifxtu@degree@bachelor\clearpage\else\cleardoublepage\fi
  \xtu@setchinese
  \xtu@chapter*[]{\cabstractname} % no tocline
}{%
  \ifxtu@degree@doctor\vfill\else\vskip12bp\fi
  \xtu@put@keywords{\textbf{关键词：}}{%
    \xtu@clist@use{\xtu@keywords}{；}%
  }%
  \xtu@setdefaultlanguage
}
\newenvironment{abstract*}{%
  \xtu@setenglish
  \xtu@chapter*[]{\eabstractname} % no tocline
}{%
  \ifxtu@degree@doctor\vfill\else\vskip12bp\fi
  \xtu@put@keywords{%
    \textbf{\ifxtu@degree@bachelor Keywords:\else Key Words:\fi\enskip}%
  }{%
    \xtu@clist@use{\xtu@keywords@en}{; }%
  }%
  \xtu@setdefaultlanguage
}
\newenvironment{denotation}[1][2.5cm]{%
  \xtu@chapter*[]{\xtu@denotation@name} % no tocline
  \vskip-30bp\xiaosi[1.6]\begin{xtu@denotation}[labelwidth=#1]
}{%
  \end{xtu@denotation}
}
\newlist{xtu@denotation}{description}{1}
\setlist[xtu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\newenvironment{acknowledgements}{%
  \xtu@chapter*{\xtu@ack@name}%
}{}
\let\acknowledgement\acknowledgements
\let\endacknowledgement\endacknowledgements
\def\xtu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\xtu@listof#1{% #1: float type
  \@ifstar
    {\xtu@chapter*[]{\csname list#1name\endcsname}\xtu@starttoc{#1}}
    {\xtu@chapter*{\csname list#1name\endcsname}\xtu@starttoc{#1}}}
\renewcommand\listoffigures{\xtu@listof{figure}}
\renewcommand*\l@figure{\ifxtu@degree@bachelor\relax\else\addvspace{6bp}\fi\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\xtu@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\xtu@listof{equation}}
\let\l@equation\l@figure
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\let\onlinecite\inlinecite
\renewcommand\bibsection{\xtu@chapter*{\bibname}}
\renewcommand\bibfont{\ifxtu@degree@bachelor\wuhao[1.619]\else\wuhao[1.5]\fi}
\setlength\bibhang{2\ccwd}
\addtolength{\bibsep}{-0.7em}
\setlength{\labelsep}{0.4em}
\def\@biblabel#1{[#1]\hfill}
\expandafter\newcommand\csname bibstyle@xtuthesis-numeric\endcsname{%
  \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\expandafter\newcommand\csname bibstyle@xtuthesis-author-year\endcsname{%
  \bibpunct{(}{)}{;}{a}{,}{,}}
\expandafter\newcommand\csname bibstyle@xtuthesis-bachelor\endcsname{%
  \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\@namedef{bibstyle@xtuthesis-inline}{\bibpunct{[}{]}{,}{n}{,}{,}}
\xtu@define@key{
  cite-style = {
    name = cite@style,
    code = {
      \@nameuse{bibstyle@xtuthesis-\xtu@cite@style}
    },
  }
}
\patchcmd\NAT@citexnum{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
  \if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citexnum}{%
  \ifx\NAT@last@yr\relax
    \def@NAT@last@yr{\@citea}%
  \else
    \def@NAT@last@yr{--\NAT@penalty}%
  \fi
}{%
  \def@NAT@last@yr{-\NAT@penalty}%
}{}{}
\xtu@define@key{
  toc-depth = {
    name = toc@depth,
    code = {\addtocontents{toc}{\protect\setcounter{tocdepth}{\xtu@toc@depth}}},
  },
}
\g@addto@macro\appendix{\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}}
\newenvironment{survey}{%
  \chapter{外文资料的调研阅读报告}%
  \xtu@setenglish
  \let\title\xtu@appendix@title
  \let\maketitle\xtu@appendix@maketitle
  \renewcommand\bibname{参考文献}%
  \let\bibsection\xtu@appendix@bibsection
  \renewcommand\@bibunitname{main-survey}%
  \let\bibliographystyle\defaultbibliographystyle
  \let\bibliography\xtu@appendix@bibliography
  \begin{bibunit}%
}{%
  \end{bibunit}%
}
\newenvironment{translation}{%
  \chapter{外文资料的书面翻译}%
  \xtu@setenglish
  \let\title\xtu@appendix@title
  \let\maketitle\xtu@appendix@maketitle
  \renewcommand\bibname{书面翻译对应的原文索引}%
  \let\bibsection\xtu@appendix@bibsection
  \renewcommand\@bibunitname{main-translation}%
  \let\bibliographystyle\defaultbibliographystyle
  \let\bibliography\xtu@appendix@bibliography
  \begin{bibunit}%
}{%
  \end{bibunit}%
}
\DeclareRobustCommand\xtu@appendix@title[1]{\gdef\xtu@appendix@@title{#1}}
\newcommand\xtu@appendix@maketitle{%
  \par
  \begin{center}%
    \xiaosi[1.667]\xtu@appendix@@title
  \end{center}%
  \par
}
\newcommand\xtu@appendix@bibsection{%
  \par
  \vskip 20bp%
  \begingroup
    \centering
    \xiaosi[1.667]\bibname\par
  \endgroup
  \vskip 6bp%
}%
\newcommand\xtu@appendix@bibliography[1]{\putbib[#1]}
\newenvironment{resume}[1][\xtu@resume@title]{%
  \xtu@chapter*{#1}}{}
\newcommand{\resumeitem}[1]{%
  \vspace{24bp}{\sihao\heiti\centerline{#1}}\par\vspace{6bp}}
\newcommand{\researchitem}[1]{%
  \vspace{32bp}{\sihao\heiti\centerline{#1}}\par\vspace{14bp}}
\newlist{publications}{enumerate}{1}
\setlist[publications]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26],resume}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26]}
\def\publicationskip{\bigskip\bigskip}
\newcommand\xtu@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\xtu@atendpackage{hyperref}{
  \hypersetup{
    linktoc            = all,
    bookmarksdepth     = 2,
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    unicode            = true,
    psdextra           = true,
    breaklinks         = true,
    plainpages         = false,
    hidelinks,
  }%
  \newcounter{xtu@bookmark}
  \renewcommand\xtu@pdfbookmark[2]{%
    \phantomsection
    \stepcounter{xtu@bookmark}%
    \pdfbookmark[#1]{#2}{xtuchapter.\thextu@bookmark}%
  }
  \renewcommand\xtu@phantomsection{%
    \phantomsection
  }
  \pdfstringdefDisableCommands{
    \let\\\@empty
    \let\hspace\@gobble
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \AtBeginDocument{%
    \ifxtu@language@chinese
      \hypersetup{
        pdftitle    = \xtu@title,
        pdfauthor   = \xtu@author,
        pdfsubject  = \xtu@degree@name,
        pdfkeywords = \xtu@keywords,
      }%
    \else
      \hypersetup{
        pdftitle    = \xtu@title@en,
        pdfauthor   = \xtu@author@en,
        pdfsubject  = \xtu@degree@name@en,
        pdfkeywords = \xtu@keywords@en,
      }%
    \fi
    \hypersetup{
      pdfcreator={\xtuthesis-v\version}}
  }%
}
\xtu@atendpackage{nomencl}{
  \let\nomname\xtu@denotation@name
  \def\thenomenclature{\begin{denotation}[\nom@tempdim]}
  \def\endthenomenclature{\end{denotation}}
}
\AtBeginDocument{%
  \let\xtu@LT@array\LT@array
  \def\LT@array{\dawu[1.5]\xtu@LT@array} % set default font size
}
\xtu@atendpackage{siunitx}{%
  \sisetup{
    group-minimum-digits = 4,
    separate-uncertainty = true,
    inter-unit-product   = \ensuremath{{}\cdot{}},
  }
  \newcommand\xtu@set@siunitx@language{%
    \ifxtu@language@chinese
      \sisetup{
        list-final-separator = { 和 },
        list-pair-separator  = { 和 },
        range-phrase         = {～},
      }%
    \else
      \ifxtu@language@english
        \sisetup{
          list-final-separator = { and },
          list-pair-separator  = { and },
          range-phrase         = { to },
        }%
      \fi
    \fi
  }
  \xtu@set@siunitx@language
  \xtu@addto{language}{\xtu@set@siunitx@language}
}
\xtu@atendpackage{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\ensuremath{\square}}%
  \newtheorem*{proof}{\xtu@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\xtu@theorem@separator}%
  \newtheorem{assumption}{\xtu@assumption@name}[chapter]%
  \newtheorem{definition}{\xtu@definition@name}[chapter]%
  \newtheorem{proposition}{\xtu@proposition@name}[chapter]%
  \newtheorem{lemma}{\xtu@lemma@name}[chapter]%
  \newtheorem{theorem}{\xtu@theorem@name}[chapter]%
  \newtheorem{axiom}{\xtu@axiom@name}[chapter]%
  \newtheorem{corollary}{\xtu@corollary@name}[chapter]%
  \newtheorem{exercise}{\xtu@exercise@name}[chapter]%
  \newtheorem{example}{\xtu@example@name}[chapter]%
  \newtheorem{remark}{\xtu@remark@name}[chapter]%
  \newtheorem{problem}{\xtu@problem@name}[chapter]%
  \newtheorem{conjecture}{\xtu@conjecture@name}[chapter]%
}
\NewDocumentCommand{\spine}{O{\xtu@title} O{\xtu@author}}{%
  \newpage\thispagestyle{empty}%
  \fangsong\addCJKfontfeatures*{RawFeature={vertical:}}
  \xiaosan\ziju{0.4}%
  \noindent\hfill\rotatebox[origin=lt]{-90}{\makebox[\textheight]{#1\hfill#2}}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `xtuthesis.cls'.
