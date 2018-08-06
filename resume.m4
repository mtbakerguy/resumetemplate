changequote([,])dnl
define([List],$2 \begin{itemize} \itemsep -2pt [$1] \end{itemize})dnl
define([SmallSpace],\vspace{-6pt})dnl
define([Degree],{\sl $1}[,] $2 \\ $3 \hfill $4)dnl
define([Position],{\sl $1} \hfill $2 \\ $3 
[ifelse($4,[],[\\],[$4])])dnl
define([Company],{\sl $1} \hfill $2 \\)dnl
define([SubPosition],[SmallSpace] $1 \hfill $2
$3)dnl
define([Section],
\section{\centerline{$1}}
\vspace{8pt} % Gap between title and text
$2
\vspace{0.2in} % Some whitespace between sections
)dnl
define([Bullet],\item $1)dnl
define([Center],\begin{center} $1 \end{center})dnl
define([SkipLine],\\ $1)dnl
define([Italicize],\textit{$1})dnl

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Long Professional Curriculum Vitae
% LaTeX Template
% Version 1.1 (9/12/12)
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% Original author:
% Rensselaer Polytechnic Institute (http://www.rpi.edu/dept/arc/training/latex/resumes/)
%
% Important note:
% This template requires the res.cls file to be in the same directory as the
% .tex file. The res.cls file provides the resume style used for structuring the
% document.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------
changequote(xxxx,yyyy)
\documentclass[10pt]{res} % Use the res.cls style, the font size can be changed to 11pt or 12pt here
changequote([,])

ifdef([Font],\usepackage{Font},\usepackage{helvet}) % default to helvetica
\newsectionwidth{0pt} % Stops section indenting

\begin{document}

%----------------------------------------------------------------------------------------
%	YOUR NAME AND ADDRESS(ES) SECTION
%----------------------------------------------------------------------------------------

\name{Name} % Your name at the top

\begin{resume}
\vspace{-18pt}

Center([{\bf [Address]} \\ Address])
Section(OBJECTIVE,[Objective])
Section(PROFESSIONAL EXPERIENCE,[include(Directory/positions.m4)])
Section(TECHNICAL SKILLS,[include(Directory/technicalskills.m4)])
Section(EDUCATION,[include(Directory/education.m4)])
Section(INTERESTS,[include(Directory/interests.m4)])
\end{resume} 
\end{document}

