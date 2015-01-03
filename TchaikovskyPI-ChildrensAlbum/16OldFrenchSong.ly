\version "2.18.0"

\paper{
 indent = 0.1\cm
ragged-bottom=##t
ragged-last = ##f
}

#(set-global-staff-size 25)
%\override-lines #'(baseline-skip . 4.0 )

\header{
% Center aligned, topmost
title = "Old French Air"  % centered
subtitle="Middle Voice" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
composer = "Tchaikovsky" % topmost, right-aligned
arranger = "from IMSLP" % 2nd from top, right-aligned
%opus = 

%left aligned top to bottom
%poet = "D major" % for lead sheets I like to put the key here
%meter = "~180 BPM" % for lead sheets I put the tempo here
%piece = 
}


hairlessHeartMelody = {
  \key d \minor
  \tempo "sweeping"

  \relative c'' {
    \time 4/4
    d8 e f a, <e g>2 |
    e8 f e c <d bes>2 |
    a'8 g8 d f e g bes c |
    \time 3/4
    a8 bes <g ees bes>2 |
    \time 4/4
    e8 f a, c <d a>2 |
  }
}

globals={
  \key g \minor
  \time 2/4 
  \tempo "Andante e mesto"
}

% overallForm="AABA"

frenchAirMelody= {
  \relative c' {
    \partial 8 d8(   |
    g8 a bes c        |  %1
    d4.) d8(         |
    c8 d ees c        |
    d4.) d8(         |

    c8 d ees c        |
    d ees16 d c8 bes    |
    a4.. g16         |
    g4.)  d8(        | 

    g8 a bes c         |
    d4.) d8(          |
    c8 d ees c         |
    d4.) d8(          |

    c8 d ees c         |
    d8 ees16 d16 c8 bes |
    a4.. g16          | 
    g2)
    
    g4( g8 a          |
    bes4.) bes8(        |
    c4 c4             |
    a4.) a8(          |
    
    d4. d8            |
    ees8 f16 ees16 d8 c |
    bes4 a8 g8         |
    a4.)  d,8(         | 
    
    g8 a bes c         |
    d4.) d8(          |
    c8 d ees c         |
    d4.)  d8(         |

    c8 d ees c          |
    d8 ees16 d16 c8 bes8 |
    a4.. g16           |
    g4.) s8             | 
    
    
  }
} 
toggleBreak={ }
%toggleBreak={ \break }

frenchAirDynamics = {
  \partial 8 s8\p |

  s2\<   |            %1
  s4\dim s4\! |
  s2\<          |
  s4\dim s4\! |
  \toggleBreak

  s2\< |
  s2  |
  s2\>  |
  s4.\! s8-"rinf." |
  \toggleBreak

  s2\< |              %9
  s4\dim s4\! |
  s2\< |              
  s4\dim s4\! |
  \toggleBreak

  s2\< |
  s8\! s8 s4\> |
  s2 |
  s2 |
  \toggleBreak
 
  s4\p s4 |           %17
  s2 |
  s2 |
  s4. s8\< |
  \toggleBreak

  s4. s8\!
  s4.\mf s8\> |
  s2 |
  s4. s8\p |
  \toggleBreak
  
  s2\< |             %25
  s4\dim s4\! |
  s2\< |             
  s4\dim s4\! |
  \toggleBreak

  s2\< |
  s4\! s8 s8\> |
  s2 |
  s8 s8\! s8 s8  |
}

frenchAirMiddleA = {
% 6 bars of the bass part are re-used in 3- places
    \relative c' {
      bes8 c d c |
      bes2       |
      
      ees4 c     |
      bes4 g     |
      
      ees'4 c    |
      bes4  g    |
    }
}

frenchAirMiddle={ 
  \voiceThree
  \partial 8 s8 |
  %  repeat A part twice
  \repeat unfold 2 {
    \frenchAirMiddleA
    c'2       |
  }
  \alternative{
    {bes4 s  |   }
    {bes2       |  }
  }
  \oneVoice
  % B-part TODO: move this into the bass voice, replace with spaces
  c8\staccato g\staccato c'\staccato ees'\staccato 
  g,8\staccato g\staccato c'\staccato ees'\staccato 
  c8\staccato g\staccato c'\staccato ees'\staccato 
  d8\staccato a\staccato c'\staccato fis'\staccato 

  <g bes>8(  d'8 g'8 ) r8  |
  <c' ees' g'>2   |
  <c' f'>4 r4   |
  d'4 ( d8) r8

  \voiceThree
  % revisit A part
  \frenchAirMiddleA
  g4 fis |
  d4. s8 |
}

frenchAirBassA = {
  \repeat unfold 2 {
    g2 ~ |
    g4 g4 ~ |
  }
    g2 ~ |
    g4 g4 |
}

frenchAirBass = {
  \voiceFour
  \partial 8 s8 |
  % begin with AA
  \repeat unfold 2 {
    \frenchAirBassA
    fis4 d
  }
  \alternative{
    {g4 g,4 | }
    {g2 | }
  }

  % B part : TODO exchange with middle voice
  s2
  s2
  s2
  s2

  s2
  s2
  s2
  s2

  \frenchAirBassA
  c4 d4 |
  g,4. s8
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" {
      \globals
      \clef "treble"
      \frenchAirMelody
    }
    \new Dynamics {
      \frenchAirDynamics
    }
    \new Staff ="lower" {
      \globals
      \clef "bass"
      <<
	\new Voice = "middle" { \frenchAirMiddle }
	\new Voice = "bass" { \frenchAirBass }
      >>
    }
  >>

% Just the middle voice
%  {
%    \globals
%    \clef "treble_8"
%    <<
%      \frenchAirMiddle
%      \frenchAirDynamics
%    >>
%  }
  \layout{ }
  \midi {}
}

