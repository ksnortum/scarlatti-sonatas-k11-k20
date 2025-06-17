%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G minor"
  opus = "K.12"
  source = "https://ks15.imslp.org/files/imglnks/usimg/c/c4/IMSLP626420-PMLP330470-Sonata_K._12_(as_L._489).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.25 . 0) (0 . 0) (0 . 0) (-0.25 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 3) (0 . 4) (2.5 . 1))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . -2) (0 . -1) (0 . -1) (0 . -2)) \etc
slurShapeD = \shape #'((0.25 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -2)) \etc

moveNaturalA = \tweak extra-offset #'(0 . -3) \etc
moveNaturalB = \tweak extra-offset #'(0 . -3) \etc

%
% Music
%

global = {
  \time 4/4
  \key g \minor
}

rightHandUpper = \relative {
  \repeat volta 2 {
    g'16->( d bf' a  g d d' c  bf g g' f  ef g c, ef |
    a,16 c fs, a  d, c' bf a  bf8-.) g4->( fs8 |
    g8-.) bf4( c d fs,8 |
    g8.) g'16-. \acciaccatura { f!8 } ef16( d c a') \acciaccatura { c,8 } 
      bf16( a g g') \acciaccatura { f8 } ef16( d c a') |
    \acciaccatura { c,8 } bf16( a g g') \acciaccatura { f8 } ef16( d c a')
      \acciaccatura { c,8 } bf16( a g g') \acciaccatura { d8 } cs16( bf a g' |
    f!16 e g d) \acciaccatura { d8 } cs16( bf a g'  f e g d)
      \acciaccatura { d8 } cs16( bf a g' |
    \voiceOne f8 e16 d  cs8 d) \oneVoice d16( e8) a,16-\slurShapeB (
      bf\prall^\trillNatural a bf d |
    cs16 d e a, bf\prall-\moveNaturalA^\trillNatural a bf d  cs d e a,
      bf\prall-\moveNaturalB^\trillNatural a bf d |
    
    \barNumberCheck 9
    cs16 d e a  a,-.) r r8 \acciaccatura { d8 } cs16( bf a a' a,16) r r8 |
    \acciaccatura { d8 } cs16( bf a a' a,) r r8 \acciaccatura { d8 } 
      cs16( bf a a' a,16) r r8 |
    \acciaccatura { d8 } cs16( bf a a' a,) r r8 \acciaccatura { d8 } 
      cs16( bf a a' a,16) r r8 |
    \acciaccatura { d8 } cs16( bf a a'~  a g f e) \acciaccatura { e8 }
      d16( cs d f  d cs d f |
    d16 cs d f  d cs d f  d cs d f  d cs d f |
    d8-.)\noBeam <f, d'>8-.( q-. <g d'>  <a d>) <f d'>-.( q-. <g d'> |
    <a d>) <f d'>-.( q-. <g d'> <a d>)\noBeam <f f'>-.( q-. <g f'>-. |
    <a f'>-.) <f f'>-.( q-. <g f'>-.  <a f'>-.) <f f'>-.( q-. <g f'>-.  |
    
    \barNumberCheck 17
    <a f'>8-.) <a a'>-. q-. <b a'>-.  <cs a'>-. <a a'>-. q-. <b a'>-. |
    <cs a'>-. <a a'>-. q-. <b a'>-.  \voiceOne a'16( g f e)  a8 g |
    s8 \voiceFour <d f>^>^~ \oneVoice  f16 bf,!( e d  cs a g d'  cs a bf d |
    <cs e>8-.)\noBeam <d f>->~  f16 bf,( e d  cs a g d'  cs a bf d |
    <cs e>8-.)\noBeam <d f>->~  f16 bf,( e d  cs a g d'  cs a bf d |
    <cs e>8-.)\noBeam \voiceFour <e g>^>-\slurShapeA ^(  q16) q^( <d f> <cs e>)
      \voiceOne a'8->\noBeam bf a g |
    f8.->\noBeam e16(  a, d g, cs) d16->[( a]) bf8 a g~ |
    \alternative {
      {
        g16 a( fs g a4)~  \oneVoice a16 bf8( a16~  a16 g8 fs16) |
      }
      {
        \barNumberCheck 25
        \voiceOne g16\repeatTie a( fs g a4)~ \oneVoice a16 g8( fs16~
          fs g8 e16) |
      }
    }
  }
  \repeat volta 2 {
    \stemUp d16->-\slurShapeE (^\aTempo a fs' e  d a a' g  fs d c' bf
      a fs ef'! d |
    \stemNeutral c4.) fs,16( g  a bf c8~  c d16 c |
    bf16 a g) ef'(  c bf a f'  d c bf g'  c, bf a f' |
    d16 c bf g'  c, bf a f'  d8-.)\noBeam <bf bf'>-.( q-. <c bf'>-. |
    <d bf'>8-.) <bf bf'>-.( q-. <c bf'>-.  <d bf'>-.) <bf bf'>-.( q-.
      <c bf'>-. |
    <d bf'>8-.)\noBeam <f bf>( <e bf'> <f bf>  <e bf'> <f bf> <e bf'> <f bf> |
    <e bf'>8-.)\noBeam q( <f af> g  af8-.)\noBeam <c, c'>-.( q-. <d c'>-. |
    
    \barNumberCheck 33
    <ef! c'>-.)\noBeam <c c'>-.( q-. <d c'>-.  <ef c'>-. <c c'>-. q-.
      <d c'>-. |
    <ef c'>8-.)\noBeam q-.( <d c'>-. <ef c'>-. <d c'>-. <ef c'>-. <d c'>-.
      <ef c'>-. |
    <d c'>8-.)\noBeam q( <d bf'> <d a'>)  <d bf'>16( a' c bf  a g fs g |
    fs16 ef! d ef  d c bf c  \stemUp bf a c bf  a g fs g) |
    \stemNeutral fs16( g a d  d,-.) r r8 \acciaccatura { g } fs16-\slurShapeD (
      ef d d' d,-.) r r8 |
    \acciaccatura { g8 } fs16-\slurShapeD ( ef d d'  d,-.) r r8 
      \acciaccatura { g } fs16-\slurShapeD ( ef d d'  d,-.) r r8 |
    \acciaccatura { g8 } fs16-\slurShapeD ( ef d d'  d,-.) r r8 
      \acciaccatura { g } fs16-\slurShapeD ( ef d d'  d,-.) r r8 |
    \stemUp \acciaccatura { g8 } fs16( ef d d'^>~  d c bf a) \stemNeutral
      \acciaccatura { a8 } g16( fs g bf  g fs g bf |
    
    \barNumberCheck 41
    g16 fs g bf  g fs g bf  g8-.)\noBeam <bf, g'>-.( q-. <c g'>-. |
    <d g>8-.) <bf g'>-.( q-. <c g'>-.  <d g>-.)\noBeam <bf g'>-.( q-. 
      <c g'>-. |
    <d g>8-.) <bf g'>-.( q-. <c g'>-.  <d g>-.)\noBeam <d d'>-. q-. <e d'>-. |
    <fs d'>8-. <d d'>-. q-. <e d'>-.  <fs d'>-. <d d'>-. q-. <e d'>-. |
    \voiceOne d'16( c bf a)  d8 c  s16 \oneVoice r <g' bf>8->~  bf16 ef,( a g |
    fs16 d c g'  fs d ef g  <fs a>8-.)\noBeam <g bf>->~  bf16 ef,( a g |
    fs16 d c g'  fs d ef g  <fs a>8-.)\noBeam <a c>->~  q16 q( <g bf> <fs a>) |
    \voiceOne bf8->\noBeam ef,16( a  d, g c, fs)  g->[( d]) ef8 d c |
    
    \barNumberCheck 49
    bf8->\noBeam ef,16( a  d, g c, fs_>_~  fs g d bf) \oneVoice 
      \tag layout { g4->\prallprall } \tag midi { g4->\prall } |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1 * 6 |
    \voiceFour f''16 a, bf8~  bf16 a8( g16) s2 |
    s1 |
    
    \barNumberCheck 9
    s1 * 8 |
    
    \barNumberCheck 17
    s1 |
    s2 cs8-. d-.  f16( d e cs |
    d8-.)\noBeam \hideNoteHead \parenthesize d s2. |
    s1 * 2 |
    s8 \hideNotes \parenLeft \parenthesize e~  e16 e d \parenRight
      \parenthesize cs \unHideNotes f16( d) g( e  f d e cs) |
    d[( a]) <g bf>8 f e  f\noBeam g16( e  f d e cs |
    \alternative {
      {
        d4)~ d16 s8. s2 |
      }
      {
        \barNumberCheck 25
        d4~\repeatTie d16 s8. s2 |
      }
    }
  }
  \repeat volta 2 {
    s1 * 7 |
    
    \barNumberCheck 33
    s1 * 8 |
    
    \barNumberCheck 41
    s1 * 4 |
    fs8 r  bf16( g a fs  g16-.) s8. s4 |
    s1 * 2 |
    g'16[( d]) c8 bf a  bf\noBeam c16( a bf g a fs) |
    
    \barNumberCheck 49
    g16[( d]) c8 \parenLeft \parenthesize bf \parenRight \parenthesize a s2 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s1 * 6 |
    s2. \voiceThree r8 d'(~ |
    d8 e4 d e d8) |
    
    \barNumberCheck 9
    s1 * 3 |
    s2 \clef treble a'4 bf |
    a4 bf a bf |
    s1 * 3 |
    
    \barNumberCheck 17
    s1 * 7 |
    \alternative {
      { s1 | }
      { 
        \barNumberCheck 25
        s1 |
      }
    }
  }
  \repeat volta 2 {
    s1 * 7 |
    
    \barNumberCheck 33
    s1 * 7 |
    s2 d,4 ef |
    
    \barNumberCheck 41
    d4 ef s2 |
    s1 * 7 |
    
    \barNumberCheck 49
    s1 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R1 |
    r2 g16->( d bf' a  g d d' c |
    bf16 g g' f!  ef g c, ef  a, c fs, a  d, c' bf a |
    bf16 a g8-.) c8( fs  g8-.) bf,( c fs |
    g8-.) bf,( c fs  g-.) bf,( a cs |
    d8-.) g,( a cs  d-.) g,( a cs |
    d8-.) g,( a bf)  a,->( a') \voiceTwo g4-\slurShapeC ( |
    a4 g a g) |
    
    \barNumberCheck 9
    \clef treble \oneVoice a4->~ a16 a( a' f')  a,,4->~ a16 a( a' e') |
    a,,4->~ a16 a( a' d)  a,4->~ a16 a( a' f') |
    a,,4->~ a16 a( a' e')  a,,4->~ a16 a( a' d) |
    a,4->( a'8-> g)  \voiceTwo f-.([ f-.)]  g-.([ g-.)] |
    f-.([ f-.)]  g-.([ g-.)]  f-.([ f-.)]  g-.([ g-.)]  |
    \clef bass \oneVoice r16 d( bf-. d  a-. d g,-. d'  f,-. d' bf-. d
      a-. d g,-. d' |
    f,16-. d' bf-. d a-. d g,-. d'-.  f,-.)\noBeam d'( bf-. d a-. d g,-. d'-. |
    f,-. d' bf-. d a-. d g,-. d'-.  f,-. d' bf-. d a-. d g,-. d'-. |
    
    \barNumberCheck 17
    f,-.)\noBeam d'( f,-. d'  e,-. cs' d,-. d'  a-. e' f,-. d'  
      e,-. cs' d,-. d' |
    a16 e' f, d'  e, cs' d, d'  a8-.)\noBeam g( a a,) |
    r16 d'( f a) g,,4->  a'8->( bf a g)~ |
    g16\noBeam d'( f a) g,,4->  a'8->( bf a g)~ |
    g16\noBeam d'( f a) g,,4->  a'8->( bf a g)~ |
    g16\noBeam cs( e g) a,,4->  d8-.\noBeam g( a a,) |
    d8-.\noBeam g( a a,)  d-.\noBeam g( a a,) |
    \alternative {
      {
        d4->~ d16 c'!( bf a  bf8 c bf a) |
      }
      {
        \barNumberCheck 25
        d,4->~ d16 c'!( bf a  bf8 a bf cs) |
      }
    }
  }
  \repeat volta 2 {
    R1 |
    fs,16->( d a' g  fs d c' bf  a g fs ef  d c bf a |
    g8)\noBeam g'( a f!  bf-.) ef,( f a |
    bf8) ef,( f a)  r16 bf( g-. bf  f-. bf ef,-. bf' |
    d,16-. bf' g-. bf  f-. bf ef,-. bf'  d,16-. bf' g-. bf  f-. bf ef,-. bf' |
    d,16-.)\noBeam bf'( df, bf'  c, c' df, bf'  c, c' df, bf'  c, c' df, bf' |
    c,16-.)\noBeam c'( c, c'  d,! c' e, c'  f,-.)\noBeam c'( af-. c
      g-. c f,-. c' |
    
    \barNumberCheck 33
    ef,!16-. c' af-. c  g-. c f,-. c'  ef,-. c' af-. c  g-. c f,-. c'
      ef,-.)\noBeam c'( g c  fs, d' g, c  fs, d' g, c  fs, d' g, c |
    fs,16-.)\noBeam d'( d, d'  e, d' f, d'  g,8-.)\noBeam c( c, c' |
    d8-.) d,( d' fs  g-.) g,( c, c') |
    d,4->~ d16 d( d' bf')  d,,4->~ d16 d( d' a') |
    d,,4->~ d16 d( d' g)  d,4->~ d16 d( d' bf') |
    d,,4->~ d16 d( d' a')  d,,4->~ d16 d( d' g) |
    d,4->( d'8-> c) \voiceTwo bf-.([ bf-.)]  c-.([ c-.)] |
    
    \barNumberCheck 41
    bf-.([ bf-.)]  c-.([ c-.)]  \oneVoice r16 g( ef-. g  d-. g c,-. g'-. |
    bf,16-. g' ef-. g  d-. g c,-. g'-.  bf,-.)\noBeam g'( ef-. g
      d-. g c,-. g'-. |
    bf,16-. g' ef-. g  d-. g c,-. g'-.  bf,-.)\noBeam g'( bf, g'  \stemDown 
      a, fs' g, g' |
    d16 a' bf, g'  a, fs' g, g'  d a' bf, g'  a, fs' g, g' |
    \stemNeutral d8-.)\noBeam c8( d d,)  \clef treble r16 g''( bf d)
      \clef bass c,,,4-> |
    d''8->( ef d c~  c16)\noBeam \clef treble g'( bf d) \clef bass c,,,4-> |
    d''8->( ef d c~  c16)\noBeam \clef treble fs( a c) \clef bass d,,,4-> |
    g'8-.\noBeam c( d d,)  g-.\noBeam c( d d,) |
    
    \barNumberCheck 49
    g8-.\noBeam c,( d d,) g2-> |
  }
}

leftHand = {
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
  \override Hairpin.after-line-breaking = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4\f\> s16 s8.\! s2 |
    s2 s-\tweak Y-offset 0.5 \mf |
    s8 s4\< s s\> s8\! |
    s1 * 3 |
    s2 s8 s\p s4\cresc |
    s1 |
    
    \barNumberCheck 9
    s1\f |
    s1 * 2 |
    s8 s\> s8. s16\! s4\mf s\p |
    s4\< s16 s8.\> s s16\! s4 |
    s16 s8.-\tweak Y-offset 1 \p s2. |
    s2 s8 s4.\cresc |
    s1 |
    
    \barNumberCheck 17
    s1\mf\cresc |
    s1 |
    s8\f \tag layout { s-\tweak Y-offset 1 \sf } \tag midi { s16\sf s\f }
      s4\< s16\! s8.\> s s16\! |
    \tag layout { s8 s-\tweak Y-offset 1 \sf } \tag midi { s\f s16\sf s\f }
      s8.\< s16\! s4\> s8. s16\! |
    \tag layout { s8 s-\tweak Y-offset 1 \sf } \tag midi { s\f s16\sf s\f }
      s4\< s16\! s8.\> s s16\! |
    \tag layout { s8 s4.-\tweak Y-offset 1 \sf s2\sf } 
      \tag midi { s8\f s\sf s4\f s8\sf s4.\f } |
    \tag layout { s2\sf s\sf } \tag midi { s8\sf s4.\f s8\sf s4.\f } |
    \alternative {
      { 
        s2 s16 s8.-\tweak Y-offset 0.5 \dim s s16\! | 
      }
      { 
        \barNumberCheck 25
        s2 s16 s8.-\tweak Y-offset 1 \dim s s16\! | 
      }
    }
  }
  \repeat volta 2 {
    s4.\f\> s8\< s4.. s16\! |
    s4.-\tweak Y-offset 1 \> s8\! s4 s8.-\tweak Y-offset 1 \> s16\! |
    s1\p\cresc |
    s2 s8\f s4.-\tweak Y-offset 0.75 \p |
    s1 |
    s8 s\> \tag layout { s2.\! } \tag midi { s2.\pp } |
    s2 s8\mf s4.\p |
    
    \barNumberCheck 33
    s1 * 2 |
    s8 s4.\< s2\mf |
    s1-\tweak Y-offset 1.5 \cresc |
    s1\f |
    s1 * 2 |
    s8 s4.\> s4\mf s\p |
    
    \barNumberCheck 41
    s2 s16 s4..\p |
    s2 s8 s4.-\tweak Y-offset -1 \cresc |
    s2 s8\mf s4.\cresc |
    s1 |
    s2 s8-\tweak Y-offset -2 \f \tag layout { s\sf } \tag midi { s16\sf s\f }
      s s8.\< |
    s16\! s8.\> s4 s8\! \tag layout { s\sf } \tag midi { s16\sf s\f } s s8.\< |
    s16\! s8.\> s4 s8\! \tag layout { s4.\sf } \tag midi { s8\sf s4\f } |
    \tag layout { s2\sf s\sf } \tag midi { s8\sf s4.\f s8\sf s4.\f } |
    
    \barNumberCheck 49
    \tag layout { s1-\tweak Y-offset -2 \sf } \tag midi { s8\sf s2..\f } |
  }
}

tempi = {  
  \repeat volta 2 {
    \tempo "Presto" 4 = 116
    s1 * 16 |
    
    \barNumberCheck 17
    s1 * 7 |
    \alternative {
      { s1 | }
      { 
        \barNumberCheck 25
        s1 | 
      }
    }
  }
  \repeat volta 2 {
    \set Score.tempoHideNote = ##t
    \tempo 4 = 116
    s1 * 7 |
    
    \barNumberCheck 33
    s1 * 16 |
    
    \barNumberCheck 49
    \tempo 4 = 108 s4 \tempo 4 = 100 s \tempo 4 = 92 s \tempo 4 = 84 s |
  }
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 2 \break
  \grace { s8 } s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  \grace { s8 } s1 * 2 \pageBreak
  
  % page 2
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 3 \pageBreak 
  
  % page 3
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  % page 4
  \grace { s8 } s1 * 2 \break
  \grace { s8 } s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
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
