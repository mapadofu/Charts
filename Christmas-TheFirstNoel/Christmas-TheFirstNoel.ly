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
title = "The First Noel"  % centered
%subtitle="subtitle" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
composer = "Traditional" % topmost, right-aligned
%arranger = "Arr" % 2nd from top, right-aligned
%opus = 

%left aligned top to bottom
%poet = "D major" % for lead sheets I like to put the key here
%meter = "~180 BPM" % for lead sheets I put the tempo here
%piece = 
}

allchords= \chordmode {
  \partial 4 { s4 }
  \repeat volta 5 {
    d2 b4:m |
    a2 e4:m/g |
    d2:/fis g4 |
    d2 g4 |
    d2:/fis g4 |
    d4:/fis g4 a4:7 |
    d2 a4:7 |
    d2 a4:7 |
    d2 b4:m |
    a2 e4:m/g |
    d2:/fis g4 |
    d2 g4 |
    d2:/fis g4 |
    d4:/fis g4 a4:7 |
    d2 a4:7 |
    d2 a4:7 |
    d2 b4:m |
    fis2:m d4:/fis |
    g2. |
    d2 a4:/cis |
    b4:m fis4:m/a g4 |
    d2 a4:7 |
    d2:/fis a4:7 |
    d2.
  }
}
melody= {
  \partial 4 { fis'8 ( e'8) }
  \repeat volta 5 {
    \relative c' {
      d4. (e8) fis8 (g8) |
      a2 b8 ( cis8) |
      d4 (cis4) b4 |
      a2 b8 ( cis8) |
      d4 (cis4) b4 |
      a4 (b4) cis4 |
      d4 (a4) g4 |
      fis2  fis8 (e8) |
      d4. (e8) fis8 (g8) |
      a2 b8 (cis8) |
      d4 cis4 b4 |
      a2 b8 (cis8) |
      d4 cis4 b4 |
      a4 (b4) cis4 |
      d4 (a4) g4
      fis2 % pickup
    }
    \relative c' {
      fis8 ( e8 ) \bar "||"
      d4. (e8) fis8 (g8) |
      a2 d8 (cis8) |
      b2 b4 |
      a2. |
      d4 cis4 b4 |
      a4 (b4) cis |
      d4 (a4) g 
    }
 }   \alternative{
      {fis'2 fis'8 (e'8)}
      {fis'2.\fermata}
    }
  
} 

keysig={ \key d \major }
timesig={ \numericTimeSignature \time 3/4 }

\score {
  <<
    \new ChordNames {
      \allchords
    }
    \new Staff {
      \keysig
      \timesig
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = #'(1 1 1)
      \new Voice {
        \melody
      }
    }
  >>  
  \layout{ }
}

