\version "2.18.2"
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
  \relative c' {
    g2 ~ g8 d8 g16 d16 c8 |
    b4 ~ b8. b16 b'8 b8 g16 a16 b8 |
    c4 ~ c8 g c b c cis |
    d4\glissando e8\glissando d8 ~ d8 b8 a4 |
  }
  \relative c' {
    g2 g8 d g a |
    e'2 e8 b e16 d16 b8 |
    a4. e8 a8 a g16 e d8
    c4. g'8 c,8 c8 ~ c4
  }
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
  d8 a8 d'4 d'8 b8 a8 g8 |
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
  \midi{}
}

