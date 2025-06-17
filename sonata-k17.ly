%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in F major"
  opus = "K.17"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/b/bc/IMSLP626426-PMLP330535-Sonata_K._17_(as_L._384).pdf"
}

\paper {
  min-systems-per-page = 6
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc

beamPositionsA = \once \override Beam.positions = #'(3 . 2)
beamPositionsB = \once \override Beam.positions = #'(4 . 3)
beamPositionsC = \once \override Beam.positions = #'(4 . 4)
beamPositionsD = \once \override Beam.positions = #'(4 . 4)
beamPositionsE = \once \override Beam.positions = #'(-5 . -4)

%
% Music
%

global = {
  \time 3/8
  \key f \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    f''8-.-> c-. f,-. |
    c'8-.-> g-. c,-. |
    f8-.-> c-. f,-. |
    \voiceOne f'16-.[ s a-. s c-.] s |
    \oneVoice f8->(\prall e16 d c bf |
    a16 bf) \grace { a16( } g4->)(\trill |
    f8-.) c-. f,-. |
    \voiceOne f'16-.[ s a-. s c-.] s |
    
    \barNumberCheck 9
    \oneVoice f8->( e16 d c bf |
    a16 bf) \afterGrace 7/8 g4(\trill { f16[ g]) } |
    \tag layout { \appoggiatura { g8 } a4.\prallprall } 
      \tag midi { \appoggiatura { g8 } a4.\prall } |
    \omit TupletBracket
    \tuplet 3/2 { c,16(^\aTempo d c } <a' c>8-.) d,\noBeam |
    \omit TupletNumber
    \tuplet 3/2 { c16( d c } <a' c>8-.) bf,-.\noBeam |
    \tuplet 3/2 { a16( bf a } <a' c>8-.) <g bf>->(~\noBeam |
    q8 <f a>4) |
    \tuplet 3/2 { c16( d c } <a' c>8-.) d,\noBeam |
    
    \barNumberCheck 17
    \tuplet 3/2 { c16( d c } <a' c>8-.) bf,-.\noBeam |
    \tuplet 3/2 { a16( bf a } <a' c>8-.) <g, bf>->(~\noBeam |
    q8 <f a>4) |
    \undo \omit TupletNumber
    \set subdivideBeams = ##t
    \tuplet 3/2 8 { a16-\slurShapeA ( bf c  d e f  g a bf } |
    c8-.) bf-. a-. |
    bf16( g' bf,8-.) a-. |
    \grace { bf16( } a8)(\trill g4) |
    \omit TupletNumber
    \tuplet 3/2 { a,16-\slurShapeB ( bf c  d e f  g a bf } |
    
    \barNumberCheck 25
    c8-.) bf-. a-. |
    bf16( g' bf,8-.) a-. |
    \grace { bf16( } a8)(\trill g4) |
    \undo \omit TupletNumber
    \acciaccatura { f'8 } \tuplet 3/2 { ef16(^\aTempo d ef } f8 d |
    ef8 b c) |
    \omit TupletNumber
    \acciaccatura { d8 } \tuplet 3/2 { c16( b c } af'8-.) c,8-.\noBeam |
    \grace { d16( } c8)(\trill b4) |
    \acciaccatura { f'8 } \tuplet 3/2 { ef16( d ef } f8 d |
    
    \barNumberCheck 33
    ef8 b c) |
    \acciaccatura { d8 } \tuplet 3/2 { c16( b c } af'8-.) c,8-.\noBeam |
    \grace { d16( } c8)(\trill b4) |
    \tuplet 3/2 { d,16-\slurShapeC ( ef f  g a b  c d ef } |
    f8-.) ef-. d-. |
    \tag layout { ef8(\prallprall } \tag midi { ef(\prall } d-.) c-. |
    g'8-.-> d-. g,-. |
    \tuplet 3/2 { d16( ef f  g a b  c d ef } |
    
    \barNumberCheck 41
    f8-.) ef-. d-. |
    \tag layout { ef8(\prallprall } \tag midi { ef(\prall } d-.) c-. |
    g'8.->( b,16 c8)~ |
    c16[ a64( b c d)] \tag layout { d8.(\prallprall } \tag midi { d8.(\prall }
    c16) |
    \tuplet 3/2 { 
      c'16->(^\aTempo b c  g f g  e d e) |
      \beamPositionsB c16->( b c  g f g  e d e) |
      \clef bass c16->( b c  g f g  e d e) |
      \beamPositionsA c16->( b c  g f g  e d e) |
    }
    
    \barNumberCheck 49
    \set subdivideBeams = ##f
    \clef treble r32 c''( d e f g a b c8)->~ |
    c16[ a64( b c d)] \tag layout { d8.(\prallprall } \tag midi { d8.(\prall }
      c16) |
    c8-.->^\aTempo g-. c,-. |
    g'8-.-> d-. g,-. |
    \voiceOne c8-> \staffDown g-. c,-. |
    \undo \omit TupletNumber
    \staffUp \oneVoice \tuplet 3/2 { f'16 e d } g8-. g,-.\noBeam |
    c4.-> |
  }
  \repeat volta 2 {
    \voiceDown c,16-.[ s e-. s g-.] s |
    
    \barNumberCheck 57
    \staffUp \voiceOne c16-.[ s e-. s g-.] s |
    \oneVoice c8->(\prall b16 a g f |
    e16 f) \afterGrace 7/8 d4(\trill { c16[ d] } |
    \voiceOne c16-.)[ s e-. s g-.] s |
    c16-.[ s e-. s g-.] s |
    \oneVoice c8->(\prall b16 a g f |
    e16 f) \afterGrace 7/8 d4(\trill { c16[ d]) } |
    \tag layout { \appoggiatura { d8 } e4.\prallprall }
    \tag midi { \appoggiatura { d8 } e4.\prall } |
    
    \barNumberCheck 65
    \omit TupletNumber
    \tuplet 3/2 { g,16(^\aTempo a g } <e' g>8-.) a,-.\noBeam |
    \tuplet 3/2 { g16( a g } <e' g>8-.) f,-.\noBeam |
    \tuplet 3/2 { e16( f e } <e' g>8-.) <d, f>8(~\noBeam |
    q8 <c e>4) |
    \tuplet 3/2 { e16( f e } <c' e>8-.) f,-.\noBeam |
    \tuplet 3/2 { e16( f e } <c' e>8-.) d,-.\noBeam |
    \tuplet 3/2 { c16( d c } <c' e>8-.) <b, d>->(~\noBeam |
    q8 <a c>4) |
    
    \barNumberCheck 73
    \acciaccatura { d'8 } \tuplet 3/2 { c16( b c } d8 b |
    \stemDown c8 gs a~ |
    \tuplet 3/2 { a16 gs a } f'8-.) \stemNeutral a,-.\noBeam |
    \grace { b16( } a8)(\trill gs4) |
    \acciaccatura { d'8 } \tuplet 3/2 { c16( b c } d8 b |
    \stemDown c8 gs a~ |
    \tuplet 3/2 { a16 gs a } f'8-.) \stemNeutral a,-.\noBeam |
    \grace { b16( } a8)(\trill gs4) |
    
    \barNumberCheck 81
    \tuplet 3/2 { g!16( a g } <e' g>8-.) a,-.\noBeam |
    \tuplet 3/2 { g16( a g } <e' g>8-.) f,-.\noBeam |
    \tuplet 3/2 { e16( f e } <e' g>8-.) d,-.\noBeam |
    <e' g>8( <d f>) <cs e>-. |
    \tuplet 3/2 { f,16( g f } <d' f>8-.) g,-.\noBeam |
    \tuplet 3/2 { f16( g f } <d' f>8-.) ef,-.\noBeam |
    \tuplet 3/2 { d16( ef d } <d' f>8-.) c,-.\noBeam |
    <d' f>8( <c ef>) <b d>-. |
    
    \barNumberCheck 89
    \voiceDown \tuplet 3/2 { ef,16( f ef } \voiceUp <c' ef>8^.) \voiceDown f, |
    \tuplet 3/2 { ef16( f ef } \voiceUp <c' ef>8^.) \voiceDown d, |
    \tuplet 3/2 { c16( d c } \voiceUp <c' ef>8^.) \voiceDown bf, |
    \staffUp \oneVoice <c' ef>8( <bf d>) <a c>-. |
    <f d'>8( <g e'!>-.) <a f'>-. |
    <bf g'>16( <c a'> <d bf'>8-.) <c a'>-. |
    <bf g'>16( <c a'> <bf g'>8-.) <a f'>-. |
    q8( <g e'>4) |
    
    \barNumberCheck 97
    \acciaccatura { bf'8 } \tuplet 3/2 { af16( g af } bf8 g |
    af8 e f~ |
    \tuplet 3/2 { f16 e f } g8-.) f-.\noBeam |
    \grace { g16( } f8)(\trill e4) |
    \acciaccatura { bf'8 } \tuplet 3/2 { af16( g af } bf8 g |
    c8-.) e,( f~ |
    \tuplet 3/2 { f16 e f } g8-.) f-.\noBeam |
    \grace { g16( } f8)(\trill e4) |
    
    \barNumberCheck 105
    \set subdivideBeams = ##t
    \tuplet 3/2 { \beamPositionsC e,16( f g  a! bf c  d c bf } |
    c8-.) bf-. a-. |
    bf16( g' bf,8-.) a-. |
    \grace { bf16( } <f a>8)(\trill <e g>4) |
    \tuplet 3/2 { \beamPositionsC e16( f g  a bf c  d c bf } |
    c8-.) bf-. a-. |
    bf16( g' bf,8-.) a-. |
    \grace { bf16( } <f a>8)(\trill <e g>4) |
    
    \barNumberCheck 113
    \tuplet 3/2 { c16( d c } <a' c>8-.) d,-.\noBeam |
    \tuplet 3/2 { c16( d c } <a' c>8-.) bf,-.\noBeam |
    \tuplet 3/2 { a16( bf a } <a' c>8-.) <g bf>->(~\noBeam |
    q8 <f a>4) |
    \tuplet 3/2 { c16( d c } <a' c>8-.) d,-.\noBeam |
    \tuplet 3/2 { c16( d c } <a' c>8-.) <g bf>-.\noBeam |
    \tuplet 3/2 { <f a>16( g a } <f a>8-.) <e g>-.\noBeam |
    \tuplet 3/2 { f'16->(^\aTempo e f  c bf c  a g a) } |
    
    \barNumberCheck 121
    \tuplet 3/2 { \beamPositionsE f16->( e f  \clef bass c bf c  a g a) } |
    \tuplet 3/2 { \beamPositionsD f16( e f  c bf c  a g a) } |
    \set subdivideBeams = ##f
    \clef treble r32 f''( g a bf c d e f8->)~ |
    f16[ d64( e f g)]  \tag layout { g8.(\prallprall } \tag midi { g8.(\prall }
    f16) | 
    f8-.->^\aTempo c-. f,-. |
    c'8-.-> g-. c,-. |
    f8-.-> c-. f,-. |
    \tuplet 3/2 { bf'16( a g } c8-.) c,-.\noBeam |
    
    \barNumberCheck 129
    f4.-> |
  }
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4. * 24 |
    
    \barNumberCheck 25
    s4. * 3 |
    \voiceThree g'8( af f |
    g8 d ef~ |
    ef8 f \once \omit Accidental ef |
    d4 f8) |
    g8-\slurShapeD ( af f |
    
    \barNumberCheck 33
    g8 d ef~ |
    ef8 f ef |
    \oneVoice <g, d'>4.) |
    s4. * 5 |
    
    \barNumberCheck 41
    s4. * 8 |
    
    \barNumberCheck 49
    s4. * 7 |
  }
  \repeat volta 2 {
    s4. |
    
    \barNumberCheck 57
    s4. * 16 |
    
    \barNumberCheck 73
    \voiceThree e'8( f d |
    e8 b c~ |
    c8 d c |
    b4 d8) |
    e8( f d |
    e8 b c~ |
    c8 d c |
    b4 d8) |
    
    \barNumberCheck 81
    s4. * 16 |
    
    \barNumberCheck 97
    \clef treble c'8( df bf |
    c8 g af~ |
    af8 bf \once \omit Accidental af |
    g4 bf8) |
    c8( df bf |
    af8 g af~ |
    af8 bf af |
    g4 bf8) |
    
    \barNumberCheck 105
    s4. * 24 |
    
    \barNumberCheck 129
    s4. |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    f'8-.-> c-. f,-. |
    c'8-.-> g-. c,-. |
    f8-.-> c-. f,-. |
    \voiceUp s16 f''-.[ s a-. s c-.] |
    \staffDown \oneVoice R4. |
    f,8-. c4->( |
    f,8-.) c-. f,-. |
    \voiceUp s16 f''-.[ s a-. s c-.] |
    
    \barNumberCheck 9
    \staffDown \oneVoice R4. |
    f,8-. c4->( |
    f,4.) |
    a4 bf8-. |
    a4 g8-. |
    f4 c8->( |
    f,4.) |
    a'4 bf8-. |
    
    \barNumberCheck 17
    a4 g8-. |
    f4 c8->( |
    f,4.) |
    f'8-.( bf-. e-.) |
    a8-. g-. f-. |
    g8( e-.) f-. |
    c4( c,8) |
    f8-.( bf-. e-.) |
    
    \barNumberCheck 25
    a8-. g-. f-. |
    g8( e-.) f-. |
    c4( c,8) |
    \voiceTwo c'4. |
    c4. |
    f,4. |
    g4. |
    c4. |
    
    \barNumberCheck 33
    c4. |
    f,4. |
    s4. |
    \clef treble \oneVoice b8-.( ef-. af-.) |
    g8-. a!-. b-. |
    c8->( bf!-.) af-. |
    g8-.-> d-. g,-. |
    b8-.( ef-. af-.) |
    
    \barNumberCheck 41
    g8-. a!-. b-. |
    c8->( bf!-.) af-. |
    g8( f e! |
    f8 g g,) |
    c4.-> |
    R4. * 3 |
    
    \barNumberCheck 49
    \clef bass c,,8-> r e'( |
    \stemDown f8 g g,) |
    c'8-.-> g-. c,-. |
    \stemDown g'8-.-> d-. g,-. |
    \voiceTwo c8-> g-. c,-. |
    \oneVoice f'8->( g-.) g,\noBeam |
    << 
      { \voiceThree c4. | } 
      \new Voice { \voiceThree \parenthesize c,4._> | } 
    >>
  }
  \repeat volta 2 {
    \voiceTwo s16 c'-.[ s e-. s g-.] |
    
    \barNumberCheck 57
    \voiceUp s16 c-.[ s e-. s g-.] |
    \staffDown \oneVoice R4. |
    c,8( g b) |
    \voiceUp s16 c-.[ s e-. s g-.] |
    s16 c-.[ s e-. s g-.] |
    \staffDown \oneVoice R4. |
    \clef treble c,8-. g4( |
    c,4.) |
    
    \barNumberCheck 65
    \clef bass e4 f8-. |
    e4 d8-. |
    c4 g8->( |
    c,4.) |
    c'4 d8-. |
    c4 b8-. |
    a4 e8->( |
    a,4.) |
    
    \barNumberCheck 73
    \voiceTwo a'4. |
    a4. |
    d,4. |
    e4. |
    a4. |
    a4. |
    d,4. |
    e4. |
    
    \barNumberCheck 81
    \oneVoice e'4 f8-. |
    e4 d8-. |
    c4 bf!8-. |
    a8->( a,) a-. |
    d'4 ef8-. |
    d4 c8-. |
    bf4 af8-. |
    g8( g,) g-. |
    
    \barNumberCheck 89
    \voiceTwo c'4 d8-. |
    c4 bf8-. |
    a4 g8-. |
    \oneVoice f8->( f,) f-. |
    bf'16( a g8-.) f-. |
    e4 f8-. |
    g8-. e-. f-. |
    c,4.-> |
    
    \barNumberCheck 97
    \clef treble \voiceTwo f''4. |
    f4. |
    bf,4. |
    c4. |
    f4. |
    f4. |
    bf,4. |
    c4. |
    
    \barNumberCheck 105
    \oneVoice c8-.( f-. bf-.) |
    a8-. g-. f-. |
    g8( e-.) f-. |
    \clef bass c4->( c,8) |
    \clef treble c'8-.( f-. bf-.) |
    a8-. g-. f-. |
    g8( e-.) f-. |
    \clef bass c4->( c,8) |
    
    \barNumberCheck 113
    a'4 bf8-. |
    a4 g8-. |
    f4 c8->( |
    f,4) f'8-. |
    a4 bf8-. |
    a4 e8-. |
    f8( c'-.) c,-.\noBeam |
    f4.-> |
    
    \barNumberCheck 121
    R4. * 2 |
    f,8-> r a'-.( |
    bf8 c c,) |
    f'8-.-> c-. f,-. |
    c'8-.-> g-. c,-. |
    f8-.-> c-. f,-. |
    bf'8( c-.) c,-.\noBeam |
    
    \barNumberCheck 129
    <f, f'>4.-> |
  }
}

leftHand =  {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s8-\tweak Y-offset 1 \f s4\p |
    s8-\tweak Y-offset 0 \f s4\p |
    s8\f s4\p |
    s4-\tweak Y-offset -1 \< s16 s\! |
    s4.-\tweak Y-offset -1 \f |
    s8 s4-\tweak Y-offset 1 \f |
    s8 s4\p |
    s4\p\< s16 s\! |
    
    \barNumberCheck 9
    s4. * 2 |
    s4.-\tweak X-offset -1 -\tweak Y-offset 0.5 ^\pocoRit |
    s4.^\scherzando |
    s4. |
    s4 s8\> |
    s8 s4\! |
    s4. |
    
    \barNumberCheck 17
    s4. * 3 |
    s4-\tweak Y-offset -1 \< s16. s32\! |
    s8\f s4\p |
    s4\> s8\! |
    s4-\tweak Y-offset -1 \> s8\! |
    s4\< s16. s32\! |
    
    \barNumberCheck 25
    s8-\tweak Y-offset 0 \mf s4-\tweak Y-offset 0 \p |
    s4. |
    s4-\tweak Y-offset -1 \>^\pocoRit s8\! |
    s4.-\tweak X-offset -2 -\tweak Y-offset 0.5 \mf |
    s4. * 2 |
    s4\> s8\! |
    s4.\p |
    
    \barNumberCheck 33
    s4. * 2 |
    s4-\tweak Y-offset -1 \> s8\! |
    s4\< s16. s32\! |
    s8\mf s4\p |
    s4\> s8\! |
    s8\f s4\p |
    s4\pp\< s16. s32\! |
    
    \barNumberCheck 41
    s4. |
    s4.\cresc |
    s4. |
    s16 s64 s32.-\tweak Y-offset -2 ^\pocoRit s4 |
    s4.\f |
    s4. * 3 |
    
    \barNumberCheck 49
    s4\f\< s8\! |
    s8 s4^\stent |
    s8-\tweak Y-offset 1 \f s4\p |
    s8\f s4\p |
    s8\f s4-\tweak X-offset -1 \p |
    s4.\f |
    s4. |
  }
  \repeat volta 2 {
    s4.\f |
    
    \barNumberCheck 57
    s4. * 3 |
    s4.\fp |
    s4. * 3 |
    s4.-\tweak X-offset -2 ^\pocoRit |
    
    \barNumberCheck 65
    s4.\p |
    s4. |
    s4 s8\> |
    s8 s4\! |
    s4. * 2 |
    s4 s8\> |
    s8 s4\! |
    
    \barNumberCheck 73
    s4.\mf |
    s4. * 2 |
    s4\> s8\! |
    s4.\p |
    s4. * 2 |
    s4\> s8\! |
    
    \barNumberCheck 81
    s4.\p |
    s4. * 2 |
    s4\f\> s8\! |
    s4.\p |
    s4. * 2 |
    s4\f\> s8\! |
    
    \barNumberCheck 89
    s4.-\tweak X-offset -1 -\tweak Y-offset 1 \p |
    s4. * 2 |
    s4\f\> s8\! |
    s8\mf s\< s\! |
    s8\f s\> s\! |
    s4.\mf |
    s8\> s4\! |
    
    \barNumberCheck 97
    s4.-\tweak Y-offset 1 \mf |
    s4. * 3 |
    s4.-\tweak Y-offset 0.5 \p |
    s4. * 2 |
    s8\> s4\! |
    
    \barNumberCheck 105
    s4\mf\< s16. s32\! |
    s8\f s4\p |
    s8\> s4\! |
    s4-\tweak Y-offset 1 \> s8\! |
    s4\p\< s16. s32\! |
    s8\mf s4\p |
    s4. |
    s4\> s8\! |
    
    \barNumberCheck 113
    s4.-\tweak Y-offset -2 \mf |
    s4. |
    s4 s8-\tweak Y-offset -1 \> |
    s4 s8\! |
    s4.-\tweak Y-offset -1.5 \p-\tweak Y-offset -1 \cresc |
    s4. |
    s16\f s^\pocoRit s4 |
    s4.\f |
    
    \barNumberCheck 121
    s4. * 2 |
    s4\f\< s8\! |
    s8 s4^\stent |
    s8-\tweak Y-offset 1 \f s4\p |
    s8-\tweak Y-offset 0 \f s4\p |
    s8\f s4\p |
    s16\f s^\rall s4 |
    
    \barNumberCheck 129
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Presto" 4. = 72
    s4. * 8 |
    
    \barNumberCheck 9
    s4. * 2 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 66
    s4. |
    \tempo 4. = 72
    s4. * 5 |
    
    \barNumberCheck 17
    s4. * 8 |
    
    \barNumberCheck 25
    s4. * 2 |
    \tempo 4. = 66
    s4. |
    \tempo 4. = 72
    s4. * 5 |
    
    \barNumberCheck 33
    s4. * 8 |
    
    \barNumberCheck 41
    s4. * 3 |
    \tempo 4. = 66
    s4. |
    \tempo 4. = 72
    s4. * 4 |
    
    \barNumberCheck 49
    s4. |
    s8 \tempo 4. = 60 s4 |
    \tempo 4. = 72
    s4. * 5 |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4. |
    
    \barNumberCheck 57
    s4. * 7 |
    \tempo 4. = 66
    s4. |
    
    \barNumberCheck 65
    \tempo 4. = 72
    s4. * 48 |
    
    \barNumberCheck 113
    s4. * 6 |
    \tempo 4. = 66
    s4. |
    \tempo 4. = 72
    s4. |
    
    \barNumberCheck 121
    s4. * 3 |
    s8 \tempo 4. = 60 s4 |
    \tempo 4. = 72
    s4. * 3 |
    \tempo 4. = 66 s4 \tempo 4. = 60 s8 |
    
    \barNumberCheck 129
    \tempo 4. = 56
    s4. |
  }
}

forceBreaks = {
  % page 1
  s4. * 5 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  \grace { s8 } s4. * 6 \pageBreak
  
  % page 2
  s4. * 5 \break
  s4. * 5 \break
  s4. * 4 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 6 \pageBreak
  
  % page 3
  s4. * 6 \break
  \grace { s8 } s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 6 \pageBreak
  
  % page 4
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 4 \break
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
