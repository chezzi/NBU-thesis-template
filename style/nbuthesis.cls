\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nbuthesis}[2024/06/01 v1.0 NBU Thesis Template]

\newif\if@printversion
\@printversionfalse

\DeclareOption{print}{\@printversiontrue}
\DeclareOption{ebook}{\@printversionfalse}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

\ProcessOptions\relax

% -------- 根据模式选择 openright/openany --------
\if@printversion
    \LoadClass[
        zihao=-4,
        a4paper,
        openright,
        fontset=fandol
    ]{ctexbook}
\else
    \LoadClass[
        zihao=-4,
        a4paper,
        openany,
        fontset=fandol
    ]{ctexbook}
\fi

\RequirePackage{style/nbusetup}

% -------- print 模式章节右页开始 --------
\if@printversion
    \ctexset{
        chapter/break = \cleardoublepage
    }
\else
    \ctexset{
        chapter/break = \clearpage
    }
\fi
