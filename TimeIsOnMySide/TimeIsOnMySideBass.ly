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
title = "Time Is On My Side"  % centered
%subtitle="subtitle" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
%composer = "Composer" % topmost, right-aligned
%arranger = "Arr" % 2nd from top, right-aligned
%opus = 

%left aligned top to bottom
poet = "F major" % for lead sheets I like to put the key here
%meter = "~180 BPM" % for lead sheets I put the tempo here
%piece = 
}

introChords = \chordmode{
  bes1. d1.:m g1.:7 c1.:7
}
chorusChords= \chordmode{
    %f4. \mark \markup { \musicglyph #"scripts.segno" }   ~ f4 bes8 f2. |
    f4.  ~ f4 bes8 f2. |
    bes2. c2. |
    f4. ~ f4 bes8 f2. |
    bes2. c2. |
}
verseChords=\chordmode{
  d2.:m c2. |
  d2.:m g2.:7 |
  c2.  bes2. |
  c2. bes2. |
  c2. bes2. |
  c1.
}
bridgeChords=\chordmode{
  bes1. 
  f1.
  bes1.
  f1.
  bes1.
  d1.:m
  g1.:7
  c1.
}
codaChords=\chordmode{
  c1.
  f1.
  bes2. c2. 
  f1.
  bes2. c2.
  f1.
  bes2. c2.
  f1.
}

introBass = {
  r1.
  r1.
  r1.
  r1. 
  \break
}
chorusBass = {
  \relative c {
    
    f2.-"Chorus" f4. f8 c a |
    bes4. r8 bes b c4. c8 d e |
    f2. f4. f8 c a |
    bes4. r8 bes b c4. c8 c c |
    \bar "||"
    \break
  }
}

verseBass={
  \relative c {
    d4.-"Verse" r8 d d c4. g'8 c,8 cis |
    d4. a'8 d,8 d g4. d4 d8 |
    c4. c4 c8 bes4. bes8 bes b |
    c4. c4 b8 bes4. bes8 bes b |
    c4. c4 a8 bes4. bes8 bes^\markup{ \bold "To " " " \raise #1.1 \musicglyph #"scripts.coda" } b 
    |
    % back to verse: c4. d4. c4. c8 d e
    %to bridge: c4. d4. c4. c4 a8 
    
  }
}


bridgeBass = {
  \relative c {
    bes4.-"bridge" r8 bes8 bes bes4. r8 bes8 bes8 |
    f'4. r8 f8 f f4. r8 f8 d8 |
    bes4. r8 bes8 bes bes4. r8 bes8 bes8 |
    f'4. r8 f8 f f4. r8 f8 d8 |
    bes4. r8 bes8 bes bes4. bes8 bes8 bes8 |
    d4. d8 d8 d8  d4. d8 f8 fis8 |
    
    g8 g,8 g8 g'8 f8 fis8  g8 g,8 g8 g'8 g8 d |
    c4 c8 c4 c8 c4. c8 d \mark \markup{ "D.S. al Coda"} e  \bar "||"
    \break
  }
}

codaBass = {
  \relative c{
    c8\coda c c d8 d d c8 c c c8 d e |
    f8 f f f8 f f f8 f f f8 c a |
    bes8 bes bes bes8 bes bes c8 c c c8 d e |
    f8 f f f8 f f f8 f f f8 c a |
    bes8 bes bes bes8 bes bes c8 c c c8 d e |
    f8 f f f8 f f f8 f f g8 f d |
    bes8 bes bes bes8 bes bes c8-^-"rit." c-^ c-^ c8-^ c-^ c-^ |
    f,1.\fermata \bar "||"
  }
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

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \introChords
      \repeat volta 2 {
	\chorusChords
	\verseChords
      }
      \bridgeChords
      \codaChords
    }
    \new Staff {
      \key f \major 
      \time 12/8 
      \clef "bass"
      \introBass
      \repeat volta 2 {
	\chorusBass
	\verseBass
      }
      \alternative{
	{c4. d4. c4. c8 d e}
	{ c4. d4. c4. c4 a8  \bar "||"}
      }
      \break
      \bridgeBass
      \codaBass
    }
>>
  
  \layout{ }
}

