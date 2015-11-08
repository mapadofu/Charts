\version "2.18.2"
\paper{
 indent = 0.1\cm
ragged-bottom=##t
ragged-last = ##t
}

%#(set-global-staff-size 24)
%\override-lines #'(baseline-skip . 4.0 )

\header{
% Center aligned, topmost
title = "Shake A Leg "  % centered
subtitle="Bass Riff" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
%composer = "Composer" % topmost, right-aligned
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

keysig={ \key e \major }
timesig={ \numericTimeSignature \time 4/4 }

hideGrace = {
  \once \hide TabNoteHead
  \once \hide NoteHead
  \once \hide Stem
  \once \override NoteHead.no-ledgers = ##t
  \once \override Glissando.bound-details.left.padding = #0.3
}

riff= \relative c,, {
  r2 r4 r8 e8 ~
  \repeat volta 2 {
    e8 g8 e4 gis8 b8 b4 |
    \grace { \hideGrace gis16  \glissando  s } a8\4 cis8 cis8 \grace { \hideGrace ais16\4 \glissando s} b8\4 d8\3 d8\3 e,8 e8 \laissezVibrer
  }
}

\score {
  <<
  \new Staff {
    \clef "bass_8"
    \key e \major
    \override StringNumber #'transparent = ##t
    \riff
  }
  \new TabStaff 
    \with { 
      stringTunings = #bass-tuning 
    }{
      \riff
    }
  >>
  \layout{ 
  }
}

