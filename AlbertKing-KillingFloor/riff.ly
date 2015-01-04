\version "2.18.0"

\markup{ "Basic Killing Floor Riff, in A (A. King's is in A flat)"}

\score{
  <<
  \new Staff{
    \clef "treble_8"
    \key a \major
    \time 4/4

    <\parenthesize e g cis' e'>8 < \parenthesize e g cis' e'>8 r4 r8 < \parenthesize e g cis' e'>16 < \parenthesize e g cis' e'>16 < \parenthesize e g cis' e'>8 < \parenthesize d f b d'>8 |
    <\parenthesize a, e a cis>8  <\parenthesize a, e a cis>8 r4 r8^"optional return" <\parenthesize a, e a cis>16 < \parenthesize a, e a cis>16 <\parenthesize a, e a cis>8 <\parenthesize d f b d'>8 |
  }
  \new Staff{
    \clef "bass"
    \key a \major
    \time 4/4
    \repeat unfold 2 
    \relative c{
      a8 a cis cis d d e e  |
    }
  }
  >>
}

