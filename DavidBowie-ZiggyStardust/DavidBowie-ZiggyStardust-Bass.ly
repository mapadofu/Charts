\version "2.18.0"
\paper{
 indent = 0.1\cm
ragged-bottom=##f
ragged-last = ##f
}

%#(set-global-staff-size 24)
%\override-lines #'(baseline-skip . 4.0 )

\header{
% Center aligned, topmost
title = "Ziggy Stardust"  % centered
subtitle="Representative Bass Parts" 
%subsubtitle="subsubtitle"
%instrument="lead"  % centered, below other three

% right aligned, top to bottom
composer = "David Bowie" % topmost, right-aligned
arranger = "1972" % 2nd from top, right-aligned
%opus = 

%left aligned top to bottom
poet = "G major" % for lead sheets I like to put the key here
meter = "Moderately" % for lead sheets I put the tempo here
%piece = 
}


introChords=\chordmode{
  g4 r4 d2 | 
  c4. g8 ~ g4 a4:m
}
introBass={
  g4 r4 d2 |
  c4. b,8~ b,4 a,8 fis8
}

verseChords=\chordmode{
  g1 b1:m c1 d1 
  g1 e1:m a1 c1
}

verseBass={
  \repeat unfold 4 { s4 s4 s4 s4 } \break
  \repeat unfold 4 { s4 s4 s4 s4 }
}

chorusChords=
\chordmode{
  \repeat volta 3 { a2 g2 | f8 c f c f c f g}
  d1 e1
}

chorusBass={
  \repeat volta 3 { 
    a16 a a a a4^. g16 g g g g4^. |
    f8 e f e f e f\glissando g_\markup{3x}
  }
  \break
  s1
  e8 e e e e e e e
}

staffSetup={
  \key g \major
  \numericTimeSignature \time 4/4 
  \clef "bass"
}
\markup {
  \vspace #1
}
\markup \bold \large { "Intro"}
\score{
    <<
    \new ChordNames {
        \set chordChanges = ##t
        \introChords
    }
    \new Staff{
        \staffSetup
        \repeat volta 2 \introBass
    }
    >>
  \layout{ }
}
\markup \bold \large { "Verse"}
\score{
    <<
    \new ChordNames {
        \verseChords
    }
    \new Staff{
        \staffSetup
        \verseBass
    }
    >>
  \layout{ }
}
\markup \bold \large { "Chorus"}
\score{
    <<
    \new ChordNames {
        \chorusChords
    }
    \new Staff{
        \staffSetup
        \chorusBass
    }
    >>
  \layout{ }
}

