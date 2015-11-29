
\version "2.18.0"

\include "guitar-fretboards.ly"

\paper{
 indent = 0.1\cm
ragged-bottom=##t
ragged-last = ##t
}

%#(set-global-staff-size 24)
%\override-lines #'(baseline-skip . 4.0 )

\header{
% Center aligned, topmost
title = "(There's No Place Like) Home For the Holidays"  % centered
%subtitle="subtitle" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
composer = "Robert Allen (music)" % topmost, right-aligned
%arranger =   % 2nd from top, right-aligned
opus = "1954"

%left aligned top to bottom
poet = "Al Stillman (lyrics)" % for lead sheets I like to put the key here
%meter = "~180 BPM" % for lead sheets I put the tempo here
%piece = 
}


% achords = \chordmode {
%   g2. g2. a2.:m a4.:m d4.
%   g2. g2. a4.:m g2.
% }



%melody = \relative c' {
%  \clef treble
%  \key <++> \major
%  \time 4/4
%  
%  f4 e8[ c] d4 g
%  a2 ~ a
%}

%harmonies = \chordmode {
%  a4:7 a4:7 a4:7 a4:7
% d4:7 d4:7 a4:7 a4:7
% e4:7 d4:7 a4:7 e4:7
%}

keysig={ \key c \major }
timesig={ \time 2/2 }

amelody= \relative c' {
  \partial 2 { e4 f } \bar "||"

  %TODO: segno
  \mark \markup \small { \musicglyph #"scripts.segno" }
  g2  e4 c | c'2 b4 a |
  g4 f e2~ | e2 c4 d |
  e2 dis4 e | a4 g f e |
  d1~ | d2 e4 f |
  g2 e4 c | d'4 c b a |
  c4 e, g2 ~ | g2 d'4 c |
  b4 g a f | g4 e f d |
  c2 r2 |
}

bmelody= \relative c' {
    r4 c f g  \bar "||" % this is a pickup 
    a4 c c b | d4 c c4. b8 |
    d4 c b a | g2 e4 f |
    g4 g fis g | b a g f |
    e1 | r4 c f g |

    a4 c c b | d4 c c4. b8 |
    d4 c b a | g2 g4  a |
    b4 d d d | d4 c b4. a8 |
    g4 g g a | g4 f e  \mark \markup \small { \italic "D.S. al Coda" } f \bar "||" 
    \break

}
codamelody=\relative g' {
  g2 e | f1 | d'1 | c2 r2 | r1 |
}

fullmelody=\new Voice = "fullmelody" {
  \amelody
  \bmelody
  \codamelody
}

fulllyrics = \new Lyrics \lyricsto "fullmelody" {
  % a section
  Oh, there's no place like home for the hol -- i -- days __
  'cause no mat -- ter how far -- a -- way you roam, __
  <<
    { when you pine for the sun -- shine of a friend -- ly gaze __ }
    \new Lyrics = "second-verse" {
      \set associatedVoice = "fullmelody"
      if you want to be hap -- py in a mil --lion ways, 
    }
  >>
  for the hol -- i -- days you can't beat home, sweet home.

  % b section
  I met a man who lives in Ten -- nes -- see, and he was head -- in' for
  Penn -- syl -- va -- nia and some home made pump -- kin pie.
  From Penn -- syl -- va -- nia, folks are trav -- 'lin' down to Dix -- ie's sun -- ny shore. 
  From At -- lan -- tic to Pa -- cif -- ic, gee, the traf -- fic is ter -- rif -- ic. Oh, there's

  % coda
  can't beat home, sweet home
}


fullchords = {
  \chordmode { % a section
    \partial 2 { s2 }
    c2 c:7 |  f1
    c2. g4:7 | g1:7
    c2 b4:7 bes4:7.5- | a1:7 |
    d2:7 aes2:7.5- | g1:7
    c2 c2:7 | f2 fis:dim7 |
    c1 | c2 ees2:dim7 |
    g2:7 d2:m7 |  g1:7 
    c2 f4 c4 | 
   
    %b section
    c2 bes4:/c c4:7 |
    f1 | f1 |
    f2 fis:dim7 | c2 cis:dim7 |
    g2:7 fis4 g4:7 | g1:7 |
    c1 | c2:7 bes4:/c c4:7 |
    f1 | f1 |
    f2 fis2:dim7  | c2 c2:m |
    g2  gis:dim7 | a2:m7 d2:7 | 
    g2:7 cis2:dim7 | d2:m7 g2:7 |

    % coda
    g2:7 cis:dim7 | d1:m7 | g2:9 g2:7.9- | c2 f4:/g c4 | c1 |


  }
}

\score {
  <<
    \new ChordNames \fullchords
    \new FretBoards {
      \override FretBoards.FretBoard.size = #'0.6
      \fullchords
    }
    \new Staff {
      \keysig
      \timesig
      \fullmelody
    }
    \fulllyrics 
  >>  
  \layout{ }
}

