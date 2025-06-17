%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in C minor"
  opus = "K.11"
  source = "https://s9.imslp.org/files/imglnks/usimg/9/9c/IMSLP626417-PMLP330448-Sonata_K._10_(as_L._370).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 3) (3 . -2)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -1)) \etc
slurShapeC = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0.5 . 0.75) (2.5 . 0.75) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 4/4
  \key c \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g'4-\slurShapeB ( \stemDown b8.-\insideSlur \trill a32 b  c4.) d8( |
    <g, ef'>8 f' g c,  \stemNeutral b a g) f( |
    ef8 f g c, b[ a g]) d''( |
    <g, ef'>8 f' g c,  \stemDown b a g) d'( |
    \stemNeutral ef8-.) g,-. d'-. g,-.  c8-. b16( a  b g b d |
    ef8-.) g,-. d'-. g,-.  c8-. b16( a  b g b d |
    f8-.) g,-. ef'-. g,-.  d'-. c16( b  c g c ef |
    f8-.) g,-. ef'-. g,-.  d'-. c16( b  c b c d |
    
    \barNumberCheck 9
    ef16 d c bf!  \stemDown c bf a g  \stemNeutral a g fs e  fs d e fs |
    g16 d g bf  d8-.) c-.  bf8.-\slurShapeC (\trill a32 g  a8.-\insideSlur
      \trill g32 fs |
    g16 d g bf  d8-.) c-.  bf8.-\slurShapeC (\trill a32 g  a8.-\insideSlur
      \trill g32 fs |
    d'16 g, bf d  g8-.)\noBeam
    << 
      { \voiceOne c,8-- bf8.-\slurShapeD (\trill a32 g } 
      \new Voice { \voiceFour ef8 d4 } 
    >>
    a'8.-\insideSlur \trill g32 fs |
    \oneVoice g16-.)^\aTempo g'( f! ef  d c b a  g-.) g( f ef  d c b a |
    g16-.) r r8 <g' b d>4-> <g b d g>-> r |
  }
  \repeat volta 2 {
    b4(^\aTempo c8.\trill b32 c  d4.) <c ef>8( |
    <d f>8-.) <c ef>4( <b d>8)
    << 
      { <c ef>8.(\trill d32 ef } 
      \new Voice { \hideNoteHead \parenthesize c8. s16 } 
    >>
    c8-.) g(\noBeam |
    
    \barNumberCheck 17
    af!8-.) f-. g-. ef-.  f-. d-.  ef16( d c8) |
    b8( g c4)  g''8->[( g,) g-.] g'-. |
    f16( ef d8)  ef16( d c8)  d16( c b8)  c16( d ef8) |  
    d32( ef f8.)  ef8.(\trill d32 ef)  \grace { ef16( } d4.)\prall
      ef8-\slurShapeF ( |
    f8-.) g,-. ef'-. g,-.  d'-. c16( b  c g c ef |
    f8-.) g,-. ef'-. g,-.  d'-. c16( b  \stemDown c bf af! g |
    \stemNeutral af16 g f ef  g ef d c  d c b a  b g a b |
    c16 g c ef g8-.) f-.  ef8.-\slurShapeA (\trill d32 c  d8.\trill c32 b) |
    
    \barNumberCheck 25
    c'16( g c ef g8-.) f-.  ef8.(\trill d32 c  d8.-\insideSlur \trill c32 b |
    g'16 c, ef g  c8-.) f,--  ef8.-\slurShapeE (\trill d32 c  d8.-\insideSlur
      \trill c32 b |
    c16-.) c'( bf! af  g f ef d  c-.) c( bf af  g f ef d |
    c16-.) r r8 <c' ef g>4-> <c ef g c>-> r |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    <c' ef>4( <d f>  <ef g>8 <d f> <c ef>) <b d>( |
    <c ef>8 d ef f  <g, g'>)_( a b) g( |
    <c, c'>8 d ef f  <g, g'>4)~ g8\noBeam <b' d>( |
    <c ef>8 d ef f  <g, g'>4) r |
    \clef treble g''8-- r f-- r ef-- r d-- r |
    g8-- r f-- r ef-- r d-- r |
    af'!8-- r g-- r f-- r ef-- r |
    af8-- r g-- r f-- r ef-- r |
    
    \barNumberCheck 9
    c'8( bf a g  fs e d c |
    bf8) r r \clef bass ef,( d4 c |
    bf4.) ef8( d4 c |
    bf4.) c,8_( d4 d, |
    g4) r r2 |
    r16 d'( e fs  g) b,-. c-. d-. g,4-> r |
  }
  \repeat volta 2 {
    <g' d'>4( <af! f'>) 
    << 
      { \voiceOne d4( \oneVoice <c ef>) | } 
      \new Voice { \voiceFour b8( g \hideNoteHead c4) | } 
    >>
    <d f>4 <g, d' g> 
    << 
      { \voiceFour c } 
      \new Voice { \voiceFour \parenthesize g' } 
    >> 
    \oneVoice r |
    
    \barNumberCheck 17
    \clef treble f'8-- r ef-- r d-- r c-- r |
    d4( ef16 d c8) \clef bass g,4.-> <g g'>8-. |
    <af f'>4 <g ef'> <f d'> <ef c'> |
    <d f g b>4 <c g' c> <g g'> r |
    \clef treble af'''8-- r g-- r f-- r ef-- r |
    af8-- r g-- r f-- r ef-- ef(\noBeam |
    f8 ef d c  b a g f |
    ef8) r r \clef bass af,_( g4 f |
    
    \barNumberCheck 25
    <ef c'>4) r8 <f d'>-. <g ef'>4( <f d'> |
    <ef c'>4) r8 <f d'>-- g4( g, |
    c4) r r2 |
    r16 g'( a b  c) ef,-. f-. g-. c,,4-> r |
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\mf |
    s2.. s8\p |
    s2.. s8\mf |
    s2.. s8\> |
    s2.-\tweak X-offset 0.5 \p s8.\< s16\! |
    s8\mf s\p s2 s8.\< s16\! |
    s8\mf s\p s2 s8.\< s16\! |
    s8\mf s\p s4. s8\<  s8. s16\! |
    
    \barNumberCheck 9
    s2...\mf\> s16\! |
    s1\p |
    s1\cresc |
    s4. s8\f s2^\pocoRit |
    s1 |
    s4 s16\f s8.^\rit s2\f |
  }
  \repeat volta 2 {
    s1\mf |
    s2.. s8\> |
    
    \barNumberCheck 17
    s1\p |
    s2\mf s4\> s8\! s\p |
    s1\cresc |
    s2 s4.\f s8\> |
    s2.\p s8.\< s16\! |
    s8\f s4.\p s2 |
    s2...\mf\> s16\! |
    s1-\tweak Y-offset -1 \p |
    
    \barNumberCheck 25
    s16 s\cresc s2.. |
    s4. s8-\tweak Y-offset 1 \f s2 |
    s1 |
    s4 s16\f s8.^\rit s2\f |
  }
}

tempi = {  
  \repeat volta 2 {
    \tempo "(Molto Moderato)" 4 = 96
    s1 * 8 |
    
    \barNumberCheck 9
    s1 * 3 |
    \set Score.tempoHideNote = ##t
    s2 \tempo 4 = 88 s4 \tempo 4 = 72 s |
    \tempo 4 = 96 s1 |
    s4 \tempo 4 = 72 s2. |
  }
  \repeat volta 2 {
    \tempo 4 = 96
    s1 * 2 |
    
    \barNumberCheck 17
    s1 * 8 |
    
    \barNumberCheck 25
    s1 * 3 |
    s4 \tempo 4 = 72 s2. |
  }
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
