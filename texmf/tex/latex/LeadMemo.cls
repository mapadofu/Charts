% Modified version of the simple memo -- setup for making
% lead sheets using org-mode
%
% This document class provides a simple memo for LaTeX users.
% It is based on article.cls and inherits most of the functionality
% that class.
% 
% Author: Rob Oakes, Copyright 2010.  Released under the LGPL, version 3.
% A copy of the LGPL can be found at http://www.gnu.org/licenses/lgpl.html

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LeadMemo}[2013/07/18 - Lead-Sheet Class]
\RequirePackage{palatino}

% Load the Base Class
\LoadClassWithOptions{article}

% Begin Requirements
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{verbatim}
% Specialized memo Commands (To, From, Subject, Logo, Letterhead Address)


\def\@songtitle{\relax}
\newcommand{\songtitle}[1]{\gdef\@songtitle{#1}}

\def\@composer{\relax}
\newcommand{\composer}[1]{\gdef\@composer{#1}}

\def\@songdate{\relax}
\newcommand{\songdate}[1]{\gdef\@songdate{#1}}

\def\@tonickey{\relax}
\newcommand{\tonickey}[1]{\gdef\@tonickey{#1}}

\def\@timesignature{\relax}
\newcommand{\timesignature}[1]{\gdef\@timesignature{#1}}

\def\@tempo{\relax}
\newcommand{\tempo}[1]{\gdef\@tempo{#1}}

\newcommand{\songsectionheader}[2]{
\begin{Large}
#1
\end{Large}
#2
\vspace{2mm}
}

\newcommand{\textchords}[1]{
\begin{LARGE}
#1
\end{LARGE}
}

% Custom Document Formatting
\newcommand\decorativeline[1][1pt]{
	\par\noindent%
	\rule[0.5ex]{\linewidth}{#1}\par
}

% Set the Paper Size and margins
\RequirePackage{geometry}
\geometry{margin=0.5in}

% Create the Letterhead and To/From Block

\renewcommand{\maketitle}{\makememotitle}
\newcommand\makememotitle{
\ifthenelse{ \equal{\@songtitle}{\relax}}
       {} { \begin{center}
           {\LARGE \@songtitle}
         \end{center} }
\begin{minipage}[b]{0.3\linewidth}

\begin{center}
%key, timesig \\
\ifthenelse{ \equal{\@tonickey}{\relax}}
{}
{ 
   \@tonickey
}
\\
\ifthenelse{ \equal{\@tempo}{\relax}}
{}
{ 
   \@tempo
   \ifthenelse{ \equal{\@timesignature}{\relax}}
   {}
   {
     , in \@timesignature 
   }
}
\\
\end{center}
\end{minipage}
\hfill
\begin{minipage}[b]{0.3\linewidth}
\begin{center}

\ifthenelse{ \equal{\@composer}{\relax}}
{}
{ 
   \@composer  \\
}
\ifthenelse{ \equal{\@songdate}{\relax}}
{}
{ 
   \@songdate\\
}
\end{center}
\end{minipage}
%	\ifthenelse{\equal{\@memologo}{\relax}}{}
%	{ % Create With Logo
%	\begin{minipage}[t]{1\columnwidth}%
%		\begin{flushright}
%			\vspace{-0.6in}
%			\@memologo
%			\vspace{0.5in}
%		\par\end{flushright}
%	\end{minipage}
%	}

	% To, From, Subject Block
%	\begin{description}
%		\ifthenelse{\equal{\@memoto}{\relax}}{}{\item [{To:}] \@memoto}
%		\ifthenelse{\equal{\@memofrom}{\relax}}{}{\item [{From:}] \@memofrom}
%		\ifthenelse{\equal{\@memosubject}{\relax}}{}{\item [{Subject:}] \@memosubject}
%		\ifthenelse{\equal{\@memodate}{\relax}}{}{\item [{Date:}] \@memodate}
%	\end{description}
	\decorativeline\bigskip{}
}

\titleformat{\section}
{\LARGE\bf\raggedright}
{}{0em}
{}[\vspace{2mm}]

\titleformat{\subsection}
{\bf\raggedright}
{}{0em}
{}[\vspace{1mm}]

