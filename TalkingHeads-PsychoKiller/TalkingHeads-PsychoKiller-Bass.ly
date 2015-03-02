\version "2.18.0"
\paper{
 indent = 0.1\cm
 ragged-right=##f
ragged-bottom=##f
ragged-last = ##f
}

%#(set-global-staff-size 24)
%\override-lines #'(baseline-skip . 4.0 )

\header{
% Center aligned, topmost
title = "Psycho Killer"  % centered
subtitle="Bass Parts" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
composer = "Talking Heads" % topmost, right-aligned
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

keysig={ \key a \minor}
timesig={ \numericTimeSignature \time 4/4 }

\markup{ Intro/Verse }
\score {
  <<
    \new Staff{
      \clef "bass"
      \keysig
      \timesig
      \new Voice {
        \repeat volta 2 {
          a,4\staccato a,4\staccato a,4\staccato a,4\staccato |
          a,4\staccato a,4\staccato a,8 e,8 g,4 |
          a,4\staccato a,4\staccato a,4\staccato a,4\staccato |
          a,4\staccato a,4\staccato a,8 e,8 g,4 | 
        }
      }
    }
  >>  
  \layout{ }
}
\markup{ Chorus }
\score {
  <<
    \new Staff{
      \clef "bass"
      \keysig
      \timesig
      \new Voice {
        \repeat volta 2 {
          f4 d8 c8 f4 d8 c8  |
          g4 e8 d8 g4 e8 d8  |
          a,4 a,8 g,8 a,4 a,8 g,8 |
          a,4 a,8 g,8 a,4 a,4  \bar"||"

          f4 d8 c8 f4 d8 c8  |
          g4 e8 d8 g4 e8 d8  |
          c4 c8 b,8 c4 c8 b,8 |
          c4 c8 b,8 c4 c4  
        }
        f4 d8 c8 f4 d8 c8  |
        g4 e8 d8 g4 e8 d8  |
      }
    }
    \new Dynamics {
      \repeat volta 2 {
        s1*4 \break
        s1*4 \break
      }
      s1 s1 \repeat unfold 2 { s4 s4 s4 s4 } 

    }

  >>  
  \layout{ }
}
\markup{ Bridge }
\score {
  <<
    \new Staff{
      \clef "bass"
      \keysig
      \timesig
      \relative c {
        fis4\staccato e\staccato d\staccato cis\staccato |
        b4\staccato a\staccato b\staccato  cis\staccato    |
        g'4\staccato  fis\staccato  e\staccato  d\staccato  |
        g4\staccato  fis\staccato  e\staccato  d\staccato   \bar"||"  \break

        fis4\staccato e\staccato d\staccato cis\staccato |
        b4\staccato a\staccato b\staccato  cis\staccato    |
        g'4\staccato  fis\staccato  e\staccato  d\staccato  |
        g4\staccato  fis\staccato  e\staccato  d\staccato   \bar"||"  \break

    
        r4 fis8 e cis a ~ a4 |
        fis'8 e cis a ~ a2 | 
        r4 b'8 a g d ~ d4 |
        b'8 a g d ~ d2
      }
    }
    
  >>  
  \layout{ }
}
\markup{ Out}
\score {
  <<
    \new Staff{
      \clef "bass"
      \keysig
      \timesig

      \repeat volta 2 {
        e8 a,8 a8 e8 e8 a,8 a8 e8 |
        e8 a,8 a8 e8 e8 a,8 a8 e8 |
      } 
    }
  >>  
  \layout{ }
}

