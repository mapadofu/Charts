\version "2.18.0"
\paper{
 indent = 0.1\cm
ragged-bottom=##t
ragged-last = ##t
}

%#(set-global-staff-size 24)
%\override-lines #'(baseline-skip . 4.0 )

\header{
% Center aligned, topmost
title = "Just"  % centered
%subtitle="subtitle" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
composer = "Radiohead" % topmost, right-aligned
%arranger = "Arr" % 2nd from top, right-aligned
%opus = 

%left aligned top to bottom
%poet = "D major" % for lead sheets I like to put the key here
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

keysig={ \key f \major }
timesig={ \numericTimeSignature \time 4/4 }

introChords= \chordmode {
  c2 ees | d f 
}

verseChords = \chordmode {
  a1:m aes | ees4. f8 ~ f2 |
  a1:m aes | ees4. f8 ~ f2 |
  a1:m aes | g2 ges | f1 |
}
chorusChords = \chordmode {
  c2 ges:7.11 | f1:maj7 | c2 ges:7.11 | f1:maj7 |
}

interludeChords = \repeat unfold 2 \introChords

bridgeChords=\chordmode{
  e2:5 d:5 cis1:5 e2 d:5 gis1:5
}

outChords=\chordmode{
  c2 bes:5 | a:5 ees:5
}
intro=\relative c {
  \set Score.markFormatter=#format-mark-box-alphabet
  s1*0 \mark #9
  r1 r1
  
  c4 c8 d ees ees ees4 |
  d8 ees e f r8 a, bes b |

  c4 c8 d ees ees ees4 |
  d8 c a f8 ~ f8 f g gis |

}
apart= \relative c {  % = Verse
  s1*0\mark #1   % bar 7, 25
  a4  a8. a16 ~ a8 a8 a8 a8 |
  aes4 aes8. aes16 ~ aes8 aes8 aes8 aes8 |
  ees'8 c g' f8 ~ f8 g8 a4 |

  s1*0\mark \markup {\musicglyph #"scripts.segno"}  % bar 10,28,47
  a,4 a8. a16 ~ a8 a8 a8 a8 |
  aes4 aes8. aes16 ~ aes8 aes8 aes8 aes8 |
  ees'8 c g' bes8 ~ bes c8 d4 |

  a,8 a a16 b8 c16 ~ c8 b8 a4 |
  aes8 aes aes16 bes8 c16 ~ c8 bes8 aes4 |
  g'8 g g e ges8 ges ges ees |
  f1 |
}

bpart= \relative c {
  s1*0\mark #2  % bar 17, 35, 54
  c4 c4 \glissando ges8 ges ges e8 |
  f4 f8.  f16 ~ f16  f16 a8 bes8 b8
  c4 c4 \glissando ges16 g16 ges8 ges e8 |
  f4 f8. f16 ~ f16 f16 a8 bes8 b8

}
tag=\relative c {
  \set Score.markFormatter=#format-mark-box-alphabet
  s1*0 \mark #9 
  c4 c8 d ees ees ees4 |  % 21, 39
  d8 ees e f r8 a, bes b |
  c4 c8 d ees ees ees4 |  
  d8 ees e f r8 a, bes b |
}

bridge=\relative c {
    s1*0\mark #3
    e8 e16 e e8 e d8 d16 d d8 d |  % 43
    cis8 cis16 cis cis8 cis g'16^\markup{ TBR } g g g a16 a a a |
    e8 e16 e e8 e d8 d16 d d8 d |
    cis8 cis16 cis cis8 cis g'16^\markup{ TBR } g g g g16 g g g^\markup{ D.S. al Coda } \bar "||"
}


ending=\relative c {
  s1*0 \mark \markup { \musicglyph #"scripts.coda" }  \set Score.currentBarNumber = #58
  c4 c4 \glissando ges8 ges ges e8 |  % bar 58
  f4 f8.  f16 ~ f16  f16 a8 bes8 b8
  c4 c4 \glissando ges16 g16 ges8 ges e8 |
  f4 f8. f16 ~ f16 f16 a8 bes8 b8 | \break


  c4 c8 d ees ees ees4 |  %bar 62
  d8 ees e f r8 a, bes b |
  c4 c8 d ees ees ees4 |
  d8 c a f8 ~ f8 a'8 bes bes | \break % 65

  c,4 c8 d ees ees ees4 |  %bar 66
  d8 ees e f r8 a, bes b |
  c4 c8 d ees ees ees4 |
  d8 c a f8 ~ f4  g8 aes | \break
    
  c2  bes |  % 70
  a4. a16 a  ees'16 ees c ees ~ ees c ees f |

  bes,16 c c8  c8 c16 c16 ~ c16 bes16 bes bes bes bes bes bes | %72
  a8 a a a16 a16 f'16 g bes g g'16 f e8 |

  c,8-. c-. c'-. c,16 bes bes bes bes bes bes bes bes a | % 74
  a8 a a a16 c ees ees c ees ~ ees c ees f |

  bes,16 c c8  c8 c16 c16 ~ c16 bes16 bes bes  bes bes bes bes | %76
  f'4 \glissando f,4  f'4 \glissando f,4 |

  bes16 c c8  c8 c16 c16 ~ c16 bes16 bes bes bes bes bes bes | %78
  a8 a a a16 c ees ees c ees ~ ees c ees f |

  bes,16 c c8  c8 c16 c16 ~ c16 bes16 bes bes bes bes bes bes | %80
  a8 a a a f'4 \glissando f4 |

  bes,16 c c8  c8 c16 c16 ~ c16 bes16 bes bes bes bes bes bes | %82
  a8 a a a16 c ees ees c ees ~ ees c ees f |

  bes,16 c c8  c8 c16 c16 ~ c16 bes16 bes bes bes bes bes bes | %84
  a4-> r4 r2 |

  
}

\score {
  <<
    \new ChordNames {
      \repeat unfold 3 { \introChords }
      \verseChords
      \chorusChords
      \repeat unfold 2 { \introChords }
      \bridgeChords
      \repeat unfold 4 { \introChords }
      \repeat unfold 7 { \outChords }
      \chordmode{ c2 bes:5 | a4:5 r4 r2 }
    }

    \new Staff {
      \clef "bass"  \keysig \timesig 
        \intro \break
        \repeat volta 2 {
          \apart \break
          \bpart \break
          \tag \break
        }
        \bridge \break
        
        \ending
    }
  >>  
  \layout{ }
  \midi{}
}

