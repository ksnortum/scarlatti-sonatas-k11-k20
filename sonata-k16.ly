%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in B♭ major"
  opus = "K.16"
  source = "https://ks15.imslp.org/files/imglnks/usimg/b/be/IMSLP626425-PMLP330523-Sonata_K._16_(as_L._397).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -1) (0 . 0.5) (0 . 0) (0 . -1)) \etc
slurShapeB = \shape #'((0 . 0) (0 . -1) (0 . 1) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.25))
                        ((0.25 . 1.25) (0.25 . 1) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0 . 0) (0 . -1) (0 . 1) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2.25)) \etc
slurShapeF = \shape #'((0 . -1.5) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeG = \shape #'((0 . -1.5) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((0 . -1.5) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . -1.5) (0 . -1) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 2/2
  \key bf \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    bf''2( \tag layout { a4.\prallprall } \tag midi { a4.\prall } bf8 |
    f2~ f4.) f8( |
    bf,8 a g' f  c bf g' f |
    af,8 g g' f  c bf g' f |
    bf,8 a! g' f  ef d c' ef,) |
    \tag layout { ef4(\prallprall } \tag midi { ef4(\prall } d) r2 |
    bf8( c16 d  ef8-.)[ f-.]  g16( f g8)  a16([ g a8)] |
    bf4-. bf,-. \grace { bf16( } bf2)\trill |
    
    \barNumberCheck 9
    bf8-. c16( d  ef8-.)[ f-.]  g16( f g8)  a16([ g a8)] |
    bf2.-> <a, ef'>4-. |
    \tag layout { <bf d>2.\prallprall } \tag midi { <bf d>2.\prall }
      <a ef'>4-. |
    \tag layout { <bf d>2.\prallprall } \tag midi { <bf d>2.\prall }
      <a ef'>4-. |
    d8( c bf a) \tag layout { a4.(\prallprall } \tag midi { a4.(\prall } bf8 |
    f8-.) g16( a bf8-.) c-.  d-. bf( a bf |
    b8 c b c  b c b c |
    f,8) g16( a bf8-.) c-.  d-. bf( a bf |
    
    \barNumberCheck 17
    b8 c b c  b c b c) |
    c8-. d16( e f8-.) g-.  a-. f( e f |
    fs8 g fs g  fs g fs g |
    c,8-.) d16( e f8-.) g-.  a-. f( e f |
    fs8 g fs g  fs g fs g) |
    c8( g e c) \afterGrace 7/8 bf2-\slurShapeG (\trill { a16[ bf]) } |
    c'8( a f c) \afterGrace 7/8 c2-\slurShapeH (\trill { b16[ c]) } |
    c'8( g e c) \afterGrace 7/8 bf!2-\slurShapeG (\trill { a16[ bf]) } |
    
    \barNumberCheck 25
    f'8( c a f) \afterGrace 7/8 ef2(\trill { d16[ ef]) } |
    f'8( d bf f) \afterGrace 7/8 f2(\trill { e16[ f]) } |
    f'8( c a f) \afterGrace 7/8 ef!2(\trill { d16[ ef] } |
    d8 bf' e, c' f,-.) d'4( c16 bf |
    a8-.) f'( d bf') \tag layout { e,4.(\prallprall }
      \tag midi { e4.(\prall } f8 |
    f8-.) f( b, c  bf8-.) g'4( bf,8 |
    a8-.) c( d f,  a4-.) g->~\prall |
    g8 f-\slurShapeB ( b, c  bf8-.) g'4( bf,8 |
    
    \barNumberCheck 33
    a8) f'( d bf'  f4-.) e-.\prall |
    f4-. f'( ef16 df c8) <df bf'>4(~ |
    << 
      { \voiceOne bf'4 af } 
      \new Voice { \voiceFour c,2 } 
    >>
    \oneVoice <bf g'>4 <af f'> |
    <g e'>4-.) << { f'4( ef16[ df c8]) } \\ { f,2 } >> <df' bf'>4(~ |
    << 
      { \voiceOne bf'4 af } 
      \new Voice { \voiceFour c,2 } 
    >>
    \oneVoice <bf g'>4 <af f'> |
    <g e'>4-.) c'4( bf16 af g8) af4( |
    g4 f ef16 df c8) df4( |
    c4) c( bf16 af g8) af4( |
    
    \barNumberCheck 41
    g4 f ef16 df c8) df4( |
    c4.) c8( df c f e |
    af8 g c b  f' e af g |
    c8-.) c,( df c)  df,( c f e |
    af8 g c b  f' e af g |
    c8-.) c,( df c)  df,-\slurShapeE ( c f e |
    af8 g c b  f' e af g |
    c8 g e c) \afterGrace 7/8 bf2-\slurShapeF (\trill { a16[ bf]) } |
    
    \barNumberCheck 49
    c'8( g e c) \afterGrace 7/8 bf2(\trill { a16[ bf] } |
    a8) f'( d bf') \grace { f16( } e2)~\prall |
    e8 f( b, c  bf-.) g'4( bf,8 |
    a8-.) c( d f,  a4-.) g->~\prall |
    g8 f-\slurShapeB ( b, c  bf-.) g'4( bf,8 |
    a8-.) f'( d bf'  f4-.) e-.\prall |
    r8 a,( f c'  a f' c a' |
    f8 c' a f'  c a' f c'~ |
    
    \barNumberCheck 57
    c8 bf a g  f e d c |
    bf8 a16 g  f[ e d c]  \tag layout { g'4.\prallprall }
      \tag midi { g4.\prall } f8) |
    f1 |
  }
  \repeat volta 2 {
    f'2( \tag layout { e4.-\insideSlur \prallprall } \tag midi { e4.\prall }
      f8 |
    c2~ c4.) c8( |
    f,8 e d' c  g f d' c |
    a8 g g' f  e d c bf) |
    \tag layout { bf4(\prallprall } \tag midi { bf4(\prall } a) r2 |
    
    \barNumberCheck 65
    f8( g16 a bf8-.) c-.  d16[( c d8])  e16( d e8) |
    f4-. f,-. \grace { f16( } f2)\trill |
    f8-. g16( a bf8-.) c-.  d16[( c d8])  e16( d e8) |
    \tag layout { f2\prallprall f\prallprall } \tag midi { f2\prall f\prall } |
    \tag layout { f2~\prallprall } \tag midi { f2~\prall } f8 f( ef! d |
    f8 ef) af,( g  f' ef d c |
    b8) g( af g  c b ef d |
    af'8-.) g,( af g  c b ef d |
    
    \barNumberCheck 73
    g8-.) g,( af g  c b ef d |
    af'8-.) g,( af g  c b ef d |
    g8 d b g) \afterGrace 7/8 f2(\trill { e16[ f]) } |
    c''8( g e c) \afterGrace 7/8 bf2-\slurShapeI (\trill { a16[ bf]) } |
    f'8( c a f) \afterGrace 7/8 ef!2(\trill { d16[ ef]) } |
    bf''8( f d bf) \afterGrace 7/8 af2(\trill { g16[ af] } |
    g8 ef' a,! f' bf,-.) g'4-\slurShapeC ( f16 ef |
    d8 c bf a  g f ef d |
    
    \barNumberCheck 81
    c8 bf a g  f2) |
    r8 af'( g f  f' d ef c |
    d8) f( ef d af' bf, g' bf, |
    f') af( g f  c' d, bf' ef, |
    af8 f g ef  f d ef c |
    d8 bf c af  bf g af f |
    g8 ef' a,! f'  bf,-.) g'4( f16 ef |
    d8-.) f( g bf,  d4-.) c->~\prall |
    
    \barNumberCheck 89
    c8 bf-\slurShapeD ( e, f  ef-.) c'4( ef,8 |
    d8-.) f( g bf,  d4-.) c-.\prall |
    bf4-. bf''( af16 gf f8) 
    << 
      { \voiceFour gf4^( | \voiceOne f4) s2 } 
      \new Voice { \voiceFour ef4~ | ef8 c^( df f c4^.) } 
    >>
    \oneVoice bf4-.\prall |
    a4-. bf'( af16 gf f8) 
    << 
      { \voiceFour gf4^( | \voiceOne f4) s2 } 
      \new Voice { \voiceFour ef4~ | ef8 c^( df f c4^.) } 
    >>
    \oneVoice bf4-.\prall |
    a4-. f'( ef16 df c8) df4( |
    c4 bf af16 gf f8) gf4( |
    
    \barNumberCheck 97
    f8) f( gf f  bf a df c |
    gf'8-.) f,( gf f  bf a df c |
    f8-.) f,( gf f  bf a df c |
    gf'8-.) f,( gf f  bf a df c |
    f8 c a f) \afterGrace 7/8 ef2(\trill { d16[ ef]) } |
    f'8( d bf f) \afterGrace 7/8 ef2(\trill { d16[ ef] } |
    d8) bf'( g ef') \tag layout { a,4.(\prallprall } \tag midi { a4.(\prall }
      bf8) |
    bf8-. f'( e f  ef-.) c'4( ef,8 |
    
    \barNumberCheck 105
    d8-.) f( g bf,  d4-.) c->~\prall |
    c8 bf-\slurShapeD ( e, f  ef-.) c'4( ef,8 |
    d8-.) f( g bf,  d4-.) c-.\prall |
    \clef bass r8 f,( d bf'  f d' bf f' |
    \clef treble d8 bf' f d'  bf f' d bf' |
    f8 ef d c  bf a g f |
    ef8 d16 c  bf[ a g f]  \tag layout { c'4.\prallprall }
      \tag midi { c4.\prall } bf8) |
    bf1_\fermata |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1 |
    \clef treble bf'2-\slurShapeA ( \tag layout { a4.-\insideSlur \prallprall }
      \tag midi { a4.\prall } bf8 |
    f2) d( |
    ef2 e |
    f2 a |
    bf4-.) \clef bass bf,( bf,-.) bf'->~ |
    bf4 \clef treble bf'( ef c |
    bf4-.) \clef bass bf,( bf,-.) bf'->~ |
    
    \barNumberCheck 9
    bf4 \clef treble bf'( ef c |
    bf8)_( d g, bf  ef, g c, f |
    \clef bass bf, d g, bf  ef, g c, f |
    bf, d g, bf  ef, g c, f |
    bf,4-.) bf'-. bf'2( |
    bf,4-.) bf'( d bf) |
    f,4-. f'( a f) |
    bf,4-. bf'( d bf) |
    
    \barNumberCheck 17
    f,4-. f'( a f) |
    f,4-. f'( a f |
    c4-.) c'( e c) |
    f,,4-. f'( a f) |
    c,4-. c'( e c) |
    c4-. c'( d e |
    f,4-.) f'( a f) |
    c,4-. c'( d e) |
    
    \barNumberCheck 25
    f,,4-. f'( g a |
    bf,4-.) bf'( d bf) |
    f,4-. f'( g a |
    bf4 g <a c>-.) e( |
    f4) bf( c c, |
    d4-.) d'( e c |
    f4-.) bf,( c c, |
    d4-.) d( e c |
    
    \barNumberCheck 33
    f4-.) bf,_( 
    << 
      { \voiceTwo c2) | } 
      \new Voice { \voiceThree a'4-. g-. | } 
    >>
    \oneVoice f2. f'4( |
    e4 f bf, df |
    c4-.) f,2 f'4( |
    e4 f bf, df |
    c2.) \clef treble c'4( |
    bf16 af g8) af4( g f |
    e16 d c8) c2-> \clef bass c4( |
    
    \barNumberCheck 41
    bf16 af g8) af4( g f |
    e16 d c8) r4 r2 |
    R1 |
    c,2-> r |
    R1 |
    c2-> r |
    R1 |
    c4-. c''( d e |
    
    \barNumberCheck 49
    f4 a g c, |
    f4-.) bf,( c c, |
    d4-.) d'( e c |
    f4) bf,( c c, |
    d4-.) d( e c |
    f4) bf( c-.) c,-. |
    \after 8 \sustainOn f,4-> r r2 |
    R1 |
    
    \barNumberCheck 57
    <f f'>2.->\sustainOff a'4( |
    bf4-.) f-. c( c, |
    f1) |
  }
  \repeat volta 2 {
    R1 |
    \clef treble f''2( \tag layout { e4.\prallprall } \tag midi { e4.\prall }
      f8 |
    c2 d |
    e2 c |
    f4-.) \clef bass f,( f,-.) f'->~ |
    
    \barNumberCheck 65
    f4 \clef treble f'( bf g |
    f4-.) \clef bass f,( f,-.) f'->~ |
    f4 \clef treble f'( bf g |
    f8) af( d, f \clef bass b, d f, af |
    d,8 f b, d  g,4-.) b( |
    c4-.) c'( f, af |
    g4-.) g,2-> g'4( |
    f-.) f,2-> f'4( |
    
    \barNumberCheck 73
    g4-.) g,2-> g'4( |
    f-.) f,2-> f'4( |
    g,4-.) g'( a! b) |
    c,-. c'( d e) |
    f,,-. f'( g a |
    bf,) bf'( c d |
    ef4 c d-.) a( |
    bf4 d ef) ef,-. |
    
    \barNumberCheck 81
    f,2->~ f8 ef'( d c |
    bf4) r <bf' af'>-.( <bf g'>-. |
    <bf f'>2) q4-.( <bf ef>-. |
    <bf d f>2) <bf af'>4-.( <bf g'>-. |
    <bf f'>4-. <bf ef>-.) d( c |
    bf4 af g f |
    ef4-.) c'( d a |
    bf4-.) ef,( f f, |
    
    \barNumberCheck 89
    g4-.) g'( a f |
    bf4 ef, f-.) f,-. |
    bf2. \clef treble bf''4( |
    a!4 bf ef,-.) gf-. |
    f4-. bf,2-> bf'4( |
    a!4 bf ef,-.) gf-. |
    \clef bass f,4-. f'2-> f4( |
    ef16 df c8) df4( c bf |
    
    \barNumberCheck 97
    a!4-.) f,2-> f'4( |
    ef4-.) ef,2-> ef'4( |
    f4-.) f,2-> f'4( |
    ef4-.) ef,2-> ef'4( |
    f,4-.) f'( g a |
    bf d c f, |
    bf4-.) ef,( f f, |
    g4-.) g'( a f |
    
    \barNumberCheck 105
    bf4-.) ef,( f f, |
    g4-.) g'( a f |
    bf4-.) ef,( f-.) f,-. |
    \after 8 \sustainOn bf4-> r r2 |
    bf2-> r |
    bf2.->\sustainOff d4( |
    ef4 bf f' f, |
    bf1)_\fermata |
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s2.. s8-\tweak Y-offset 1 \p |
    s1 |
    s2 s\cresc |
    s1 |
    s1\f |
    s1 * 2 |
    
    \barNumberCheck 9
    s1\p |
    s4 s2.\cresc |
    s1 * 2 |
    s1-\tweak Y-offset -1 \f |
    s8 s4.\p\< s8\! s4\p\< s8\! |
    s4.\> s8\! s2 |
    s8 s4.\< s8\! s4.\< |
    
    \barNumberCheck 17
    s4.\> s8\! s2 |
    s2\mf\< s8\! s4.\p\< |
    s4.\> s8\! s2 |
    s2\mf\< s8\! s4.\p\< |
    s1\!\cresc |
    s1\f |
    s1 |
    s1\p |
    
    \barNumberCheck 25
    s1\cresc |
    s1 * 3 |
    s2 s\f |
    s8 s2..\mf |
    s1 * 2 |
    
    \barNumberCheck 33
    s1 |
    s4 s2.\f |
    s1 |
    s4 s2.\p |
    s1 |
    s4 s2\f s4\mf |
    s1 * 2 |
    
    \barNumberCheck 41
    s1 |
    s4. s8\p s2\cresc |
    s1 |
    s2\f s8\p s4.\cresc |
    s1 |
    s2\f s8\p s4.\cresc |
    s1 |
    s1\f |
    
    \barNumberCheck 49
    s1 * 2 |
    s8 s2..\mf |
    s1 * 3 |
    s8 s4.\p s2\cresc |
    s2.. s8\f |
    
    \barNumberCheck 57
    s1 * 3 |
  }
  \repeat volta 2 {
    s1\f |
    s2.. s8\p |
    s1 |
    s1\cresc |
    s1\f |
    
    \barNumberCheck 65
    s8 s2..\cresc |
    s1\f |
    s8 s\p s2.\cresc |
    s1\f |
    s1 |
    s4\> s2.\p |
    s8 s2.\< s8\! |
    s2..\sfp\< s8\! |
    
    \barNumberCheck 73
    s2..\sfp\< s8\! |
    s2..\sfp\< s8\! |
    s1\f |
    s1 |
    s1\p |
    s1\f |
    s1 * 2 |
    
    \barNumberCheck 81
    s2 s4.-\tweak Y-offset -4 \> s8\! |
    s1-\tweak Y-offset -3 \p |
    s1 |
    s4.\< s8\! s2\mf |
    s1-\tweak Y-offset 2 \dim |
    s1 |
    s1\cresc |
    s2. s4\f |
    
    \barNumberCheck 89
    s8 s2..\mf |
    s1 |
    s4 s2\f s4\mf |
    s1 |
    s4 s2\f s4\mf |
    s1 |
    s4 s2-\tweak Y-offset 1 \f s4-\tweak Y-offset 1 \mf |
    s1 |
    
    \barNumberCheck 97
    s8 s2.\p\< s8\! |
    s2..\sfp\< s8\! |
    s2..\sfp\< s8\! |
    s2..\sfp\< s8\! |
    s1\f |
    s1 * 2 |
    s8 s4.\mf s2\cresc |
    
    \barNumberCheck 105
    s2. s4\f |
    s1 * 2 |
    s8 s4.\p s2\cresc |
    s1 |
    s1\f |
    s1 * 2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Presto" 2 = 100
    s1 * 56 |
    
    \barNumberCheck 57
    s1 |
    s4 \tempo 2 = 92 s \tempo 2 = 84 s \tempo 2 = 76 s |
    s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 100
    s1 * 5 |
    
    \barNumberCheck 65
    s1 * 40 |
    
    \barNumberCheck 105
    s1 * 6 |
    \tag layout { s1 * 2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 92 s \tempo 2 = 84 s \tempo 2 = 76 s |
          s1 |
        }
        {
          s4 \tempo 2 = 88 s \tempo 2 = 76 s \tempo 2 = 66 s |
          s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 2
  s1 * 5 \break
  s1 * 5 \break
  s1 * 4 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 3
  s1 * 5 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \pageBreak
  
  % page 4
  s1 * 5 \break
  s1 * 5 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 5 \break
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
    \new Staff = "upper" << \rightHand \tempi \dynamics >>
    \new Staff = "lower" << \leftHand \tempi \dynamics >>
  >>
  \midi {}
}
