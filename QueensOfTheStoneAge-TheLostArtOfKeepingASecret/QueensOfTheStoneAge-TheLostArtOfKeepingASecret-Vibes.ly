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
title = "The Lost Art of Keeping A Secret"  % centered
subtitle="Vibes part" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
composer = "Queens of the Stone Age" % topmost, right-aligned
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

keysig={ \key c \major }
timesig={ \numericTimeSignature \time 4/4 }

\score{
  <<
    \new ChordNames{
      c1 g ges f    
      c1 g ges f    
    }
    \new Staff{
      \clef "treble" 
      \new Voice {
        \relative c'' {
          <c g>1_"During verses, incl. solo"  <g' d> <ges des> <f c>           
          <c g>1 <g' d> <bes ges> <a f>           

        }   
      }
    }
  >>  
  \layout{ }
}

