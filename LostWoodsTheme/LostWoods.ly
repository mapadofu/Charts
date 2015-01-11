\version "2.18.0"
\include "english.ly"
\paper{
 indent = 0.1\cm
ragged-bottom=##t
ragged-last = ##f
}

%#(set-global-staff-size 24)
%\override-lines #'(baseline-skip . 4.0 )

\header{
% Center aligned, topmost
title = "The Lost Wood Theme"  % centered
%subtitle="Chord Sheet" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
%composer = "LennonMcCartney" % topmost, right-aligned
%arranger = "DLMtranscription" % 2nd from top, right-aligned
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
\score {
 
\transpose c c {
 <<
    \new Staff { %\with {midiInstrument=#"reed organ"}
    \keysig
    \timesig
    \relative c'' {

        \repeat volta 2 {
            f8 a b4 f8 a b4  |
            f8 a b e d4 b8 c8 |
            b8 g e4~e4. d8 |
            e8 g e2. | 
            \break

            f8 a b4 f8 a b4  |
            f8 a b e d4 b8 c8 |
            e8 b8 g4~g4. b8 |
            g8 d8 e2.               \bar "||"
            \break
            d8 e f4 g8 a b r |
            c8 b e,4 ~ e2 |
            d8 e f4 g8 a b r |
            c8 d8 e4~e2 |
            \break
            d,8 e f4 g8 a b r |
            c8 b e,4 ~ e2 |
            <d f>8 <c e> <f a> <e g> <g b> <f a> <a c> <g b> |
            <b d>8 < a c> <c e> <b d> <d f> <c e> e16 f8 d16 |
            e4 <e b gs e b e,>8 <e b gs e b e,>8 <e b gs e b e,>  <e b gs e b e,>  <e b gs e b e,> <e b gs e b e,> | <e b gs e b e,>4 r4 r2 |

        }
    
        
        
    }
  }

  %\new Staff \with {midiInstrument=#"pad 2 (warm)"}{
  %      \keysig
  %      \timesig
  %      \repeat unfold 2 {
  %          f1 ~ f1  f1 ~ f1
  %          f1 ~ f1  f1 ~ f1
  %          f1 ~ f1  f1 ~ f1
  %          f1 ~ f1  f1 ~ f1
  %          f1 ~ f1
  %      }
  %  }
>>
} 

 \layout{ }
 \midi{}
}

