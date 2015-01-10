\version "2.18.0"

\markup{ "Minimal Killing Floor Rhythm, in A (A. King's is in A flat)"}
allchords = \chordmode {
    a1:7 a1:7 a1:7 a1:7
    d1:7 d1:7 a1:7 a1:7
    e1:7 d1:7 a1:7 a4:7 e2.:7
}
guitartabA={
    < e'\3 g'\2 cis''\1>8 < e'\3 g'\2 cis''\1>8 r4 r8 < e'\3 g'\2 cis''\1>16 < e'\3 g'\2 cis''\1>16 < e'\3 g'\2 cis''\1>8 < d'\3 fis'\2 b'\1>8  |
    < cis'\3 e'\2 a'\1>8 <cis'\3 e'\2 a'\1>8 r4 r2 |

}


guitarA={
    < e' g' cis''>8 < e' g' cis''>8 r4 r8 < e' g' cis''>16 < e' g' cis''>16 < e' g' cis''>8 < d' fis' b'>8  |
    < cis' e' a'>8 <cis' e' a'>8 r4 r2 |

}
guitarE={
 < e gis d' e' >8 < e gis d' e' >8 r8 < e gis d' e' >8 ~ < e gis d' e' >4 r4
}
guitartabE={
 < e\5 gis\4 d'\3 e'\2 >8 < e\5 gis\4 d'\3 e'\2 >8 r8 < e\5 gis\4 d'\3 e'\2 >8 ~ < e\5 gis\4 d'\3 e'\2 >4 r4
}


bassA=\relative c{
  a8 a cis cis  e e  fis fis |
}

\score{
  <<
  \new ChordNames {
    \allchords
  }
  \new Staff{
    \clef "treble_8"
    \key a \major
    \time 4/4
    \repeat percent 2 {\guitarA}
    \transpose a d' { \guitarA }  \guitarA 
    \guitarE \transpose e d { \guitarE }
    \guitarA 
    %<\parenthesize e g cis' e'>8 < \parenthesize e g cis' e'>8 r4 r8 < \parenthesize e g cis' e'>16 < \parenthesize e g cis' e'>16 < \parenthesize e g cis' e'>8 < \parenthesize d f b d'>8 |
    %<\parenthesize a, e a cis>8  <\parenthesize a, e a cis>8 r4 r8^"optional return" <\parenthesize a, e a cis>16 < \parenthesize a, e a cis>16 <\parenthesize a, e a cis>8 <\parenthesize d f b d'>8 |
  }
  \new TabStaff{
    \repeat percent 2 { \guitartabA }
    \transpose a d' { \guitartabA } \guitartabA
    \guitartabE \transpose e d { \guitartabE} 
    \guitartabA
  }
  \new Staff{
    \clef "bass"
    \key a \major
    \time 4/4
    \repeat percent 2 { \repeat unfold 2 \bassA }
    \transpose a d' { \repeat unfold 2 \bassA } \repeat unfold 2 \bassA
    \transpose a e' { \bassA } \transpose a d' {\bassA} \bassA  { a,8 e8  e e  e e   e e }
  }
  >>
}

