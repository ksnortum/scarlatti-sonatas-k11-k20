%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in D minor"
  opus = "K.18"
  source = "https://s9.imslp.org/files/imglnks/usimg/0/06/IMSLP626427-PMLP330547-Sonata_K._18_(as_L._416).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (2 . 0) (2 . 0)) \etc
slurShapeB = \shape #'((0.75 . -1) (0.75 . -1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 1.75))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . -1)) \etc

%
% Music
%

global = {
  \time 4/4
  \key d \minor
}

rightHandUpper = \relative {
  \repeat volta 2 {
    r16 d'16-. f-. a-.  f'4->(~ \voiceOne f16 e f d)  e( d e cs |
    \oneVoice d8.) a16( e'8.) a,16( \voiceOne f'8.->) e16(  d8.-> cs16) |
    f8. e16(  d8.-> cs16)  f8.-> e16(  d8.-> cs16) |
    f8.-> e16(  d8.-> cs16)  a'8.-> g16( \oneVoice f16 d a <cs e> |
    <d f>16-.)\noBeam a( bf a  cs bf d bf  e a, gs a  \stemDown b a c a |
    \stemNeutral d16 g, fs g  a g bf! g  \voiceOne c8.) d16(  c8. bf16) |
    f'8.( g16  f8.-> e16)  c8.( d16  c8. bf16) |
    f'8.->( g16  f8.-> e16) \oneVoice a16-.->\noBeam a,( bf a  bf a b a |
    
    \barNumberCheck 9
    c16 b c b  c b cs b  d cs e d \voiceOne f8) e16( d |
    \oneVoice cs16-.)\noBeam a16( bf a  bf a b a  c b cs b  d cs e d |
    f16 e fs e  g fs gs fs  a gs b a \voiceOne c!8) b16( a |
    \oneVoice gs16-.)\noBeam e( f e  f e fs e  g fs gs fs  a gs b a |
    \voiceOne c8.) b16(  a8.-\insideSlur -> gs16)  e8.->( f16  e8.-> d16) |
    c'8.-> b16(  a8.-\insideSlur -> gs16)  e8.->( f16  e8.-> d16) |
    \oneVoice <a' c>16-.->\noBeam e16( f e  gs f a f  b e, ds e  fs e g e |
    a16 d, cs d  e d f d  g-\insideSlur -> c,) f-.([ b,-.]  e-. a,-. d-.
      gs,-. |
    
    \barNumberCheck 17
    c16-. f, b-. e,  a-. d, g-. c,  f-. b, e-. a,) \voiceOne d8.( c16 |
    \oneVoice <gs b>8-.) <a c>-. <b d!>-. <c e>-.  <b d>-.-> <a c>-. <gs b>-.
      a-. |
    <gs b>8-. <a c>-. <b d!>-. <c e>-.  <d f>-.-> <c e>-. <b d>-. <a c>-. |
    <gs b>8-. <a c>-. <b d!>-. <c e>-.  <b d>-.-> <a c>-. <gs b>-. a-. |
    <gs b>16-.\noBeam \clef bass e( f e  f e fs e  g fs gs fs  a gs b a |
    \clef treble c16 b cs b d cs e d  f e fs e  gs fs a gs |
    b16 a c b  d c e d  f d e c  d b c gs |
    a16 d) c(\prall b  c d e gs,  a d) c(\prall b  c d e gs, |
    
    \barNumberCheck 25
    a d) c(\prall b  c a' b, gs')  a->( e f d  e cs d b) |
    \alternative {
      {
        \voiceOne e8 d cs d  bf a g f |
        e8 f g gs  a4 b\rest |
      }
      {
        e8 d cs b  a16( e cs e  a,-.) \oneVoice r r8 |
      }
    }
  }
  \repeat volta 2 {
    r16 \stemDown a'( bf! a  e' cs e b  cs-\insideSlur -> a bf a)  g'( e f d |
    e16-\insideSlur -> a, bf a)  bf'( g a f  g e f d  e cs d b |
    \stemNeutral cs16 a bf! g  a f g e  f d ef d  ef d e d |
    fs16) d^( ef d  fs d a' fs \voiceOne d'8.) ef16( d8. c16) |
    
    \barNumberCheck 33
    g'8.( a16 g8. fs16)  d8.( ef16 d8. c16) |
    g'8.( a16 g8. fs16) \oneVoice bf->( g a f  g e f d |
    e16 cs d b  \stemDown cs a bf g)  a'->( f g e  f d ef c |
    d16 b c a  \stemNeutral b g af f)  g'( g, af g  af g a g |
    bf16 a bf a  bf a b a  c b d c \voiceOne ef8) d16( c |
    \oneVoice b16-.)\noBeam g( af g  af g a g  bf a b a  c b d c |
    ef16 d e d  f e fs e  g fs a g \voiceOne bf8) a16( g |
    \oneVoice fs16-.)\noBeam d( ef d  ef d e d  f e fs e  g fs a g |
    
    \barNumberCheck 41
    \voiceOne bf8.) a16( g8.-\insideSlur -> f16)  bf8. a16( g8.-\insideSlur ->
      f16) |
    bf8. a16( g8.-\insideSlur -> f16)  g8. f16( e8.-\insideSlur -> d16) |
    g8. f16( e8.-\insideSlur -> d16)  g8. f16( e8.-\insideSlur -> d16) |
    g8. f16( e8.-\insideSlur -> d16  \oneVoice <cs e>8-.) <d f>-. <e g>-.
      <f a>-. |
    <e g>8-. <d f>-. <cs e>-. d-.  <cs e>-. <d f>-. <e g>-. <f a>-. |
    <g bf>8-. <f a>-. <e g>-. <d f>-.  <cs e>-. <d f>-. <e g>-. <f a>-. |
    <e g>8-. <d f>-. <cs e>-. d-.
      << 
        { \voiceFour <cs e>16^.\noBeam } 
        \new Voice { \voiceFour \hideNoteHead \parenthesize cs16 } 
      >>
      \oneVoice a,-\slurShapeC ( bf a  bf a b a |
    c16 b cs b  d cs e d  f e fs e  g fs a g |
    
    \barNumberCheck 49
    bf!16 a b a  cs b d cs  e d f e  g f a g |
    bf16 g a f  g e d cs  d g) f(\prall e  f g a cs, |
    d16 g) f(\prall e  d g a cs,  d g) f(\prall e) \voiceOne a8 g |
    f8.-> e16(  a, d g, cs)  d( a bf) g-.  a( f g) e-. |
    \alternative {
      {
        f8.-> \oneVoice g16(  f e d cs) \appoggiatura { cs16-> } d4 r |
      }
      {
        f8.-> \oneVoice g16(  f e d cs) \appoggiatura { cs16-> } d2\fermata |
      }
    }
  }
  \bar "|."
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2 \voiceFour a'4 bf-> |
    s2 f'16( a, bf8)  d16( a g8) |
    f'16( a, bf8)  d16( a g8)  f'16( a, bf8)  d16( a g8) |
    f'16( a, bf8)  d16( a g8)  a'16( a, bf8) s4 |
    s1 |
    s2 c16( e, fs8)  c'16( fs, e8) |
    f'16( c d8)  f16( c bf8)  c16( e, f8)  c'16( f, e8) |
    f'16( c d8)  f16( c bf8)  s2 |
    
    \barNumberCheck 9
    s2. f'16( a, bf8) |
    s1 |
    s2. c'16( e, f8) |
    s1 |
    c'16( e, f8)  a16( e d8)  e16( gs, a8)  e'16( a, gs8) |
    c'16( e, f8)  a16( e d8)  e16( gs, a8)  e'16( a, gs8) |
    s1 * 2 |
    
    \barNumberCheck 17
    s2. d16( gs, a8) |
    s1 * 7 |
    
    \barNumberCheck 25
    s1 |
    \alternative {
      {
        cs'16( a bf! g  a e f d  g e f d  e cs d gs, |
        cs16 a d a  e' cs d b  cs d cs b  a16-.) a\rest a8\rest |
      }
      {
        cs'16( a b gs  a e gs d  \parenthesize cs16-.) s8. s4 |
      }
    }
  }
  \repeat volta 2 {
    s1 * 3 |
    s2 d'16( fs, g8)  d'16( g, fs8) |
    
    \barNumberCheck 33
    g'16( d ef8)  g16( d c8)  d16( fs, g8)  d'16( g, fs8) |
    g'16( d ef8)  g16( d c8) s2 |
    s1 * 2 |
    s2. ef16( g, af8) |
    s1 |
    s2. bf'16( d, ef8) |
    s1 |
    
    \barNumberCheck 41
    bf'16( cs, d8)  g16( cs, d8)  bf'16( cs, d8)  g16( cs, d8) |
    bf'16( cs, d8)  g16( cs, d8)  g16( a, bf8) e16( a, bf8) |
    g'16( a, bf8) e16( a, bf8)  g'16( a, bf8) e16( a, bf8) |
    g'16( a, bf8) e16( a, bf8) s2 |
    s1 * 4 |
    
    \barNumberCheck 49
    s1 * 2 |
    s2. f'16( d e cs) |
    d16( a) <g bf>8-. f e  f8.-> e16-. r16 d8-> cs16-. |
    \alternative {
      {
        d16-\slurShapeB ^( \voiceDown a bf8) a g \parenthesize f4
          -\tweak X-offset -1 ^\md s |
      }
      {
        \voiceUp d'16-\slurShapeB ^( \voiceDown a bf8) a \parenthesize g
          \parenthesize f2-\tweak X-offset -4 ^\md |
      }
    }
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  
  \repeat volta 2 {
    d,16-.->-\tweak X-offset -0.75 _\sfMarkup r r8  r16 a'-._\< d-. f-.
      a4->(\! g) |
    r16 f16( d'8~  d16) e,( cs'8)  d,-. g'( f e) |
    d,8-. g( f e  d-.) g'( f e) |
    d,8-. g( f e)  f( g a a, |
    d8-.)\noBeam <d' g>-. q-. q-.  <cs g'>-. <c e>-. q-. q-. |
    <b d>8-. <bf d>-. q-. q-.  <a c>( <bf d> <a c> <g bf>) |
    \clef treble a'8( bf a g)  <a, c>( <bf d> <a c> <g bf>) |
    a'8( bf a g)  f,-.->\noBeam f'-. f-. f-. |
    
    \barNumberCheck 9
    <e g>8-. q-. q-. q-.  <f a>-. <cs e>-. <d f>-. g,->(\noBeam |
    a4) g'8( f  e g f e |
    d8 c' b d  c \parenthesize <gs b> <a c>) d,->(\noBeam |
    e4) d'8( c  b d c gs |
    % Last eight note: b, bf in the source, but see next measure
    a8) d( c b)  <c, e>( <d f> <c e> <b d>) |
    a'8->( d c b)  <c, e>->( <d f> <c e> <b d> | 
    a8-.)\noBeam \stemUp <a' d>-. q-. q-.  <gs d'>-. <g b>-. q-. q-. |
    <fs a>-. <f a>-. q-. q-.  <e g>-.\noBeam <d f>-. <c e>-. <b d>-. |
    
    \barNumberCheck 17
    \clef bass \stemDown <a c>8-. <g! b>-. <f a>-. <e g>-.  <d f>-. <c e>-.
      <b d>-. <a e'>-. |
    \stemUp e16-.^( e'_\ppMarkup ds e  ds e ds e)  f,-.->^( e'_\ppMarkup ds e
      ds e ds e) |
    e,16-.^( e' ds e  ds e ds e)  d,!-.->^( e'_\ppMarkup ds e  ds e ds e) |
    e,16-.^( e' ds e  ds e ds e)  f,-.->^( e'_\ppMarkup ds e  ds e ds e) |
    e,4->( d'8 c  b d c b |
    \stemNeutral a8 g' f e  d c' b a |
    gs8 a f e  d-.) d'4->( e8 |
    f8-.) d( e e,  f-.) d( e e' |
    
    \barNumberCheck 25
    f8-.) d-\slurShapeD ( e e, a,4) r |
    \alternative {
      {
        a2-> a4 a |
        a4 a a  r16 g'( f e) |
      }
      {
        a,4-> a a->~ a16 cs( e a |
      }
    }    
  }
  \repeat volta 2 {
    a,8-.)_\f r r4 a-> r |
    a4.-> \clef treble a''8->(  bf) a-. g-. f-. |
    e8-. d-. cs-. a-. \clef bass d,4 r |
    c'!8-.( c-. c-. c-.)  <bf d>( <c ef> <bf d> <a c>) |
    
    \barNumberCheck 33
    \clef treble bf'8( c bf a)  <bf,d>( <c ef> <bf d> <a c>) |
    bf'8( c bf a)  g-. g-. g-. g-. |
    <a, g'>-. q-. q-. q-.(  f'-.) f-. f-. f-. |
    \clef bass <g, f'>-. q-. q-. q-.(  ef'-.) ef-. ef-. ef-. |
    <d f>-. q-. q-. q-.  <ef g>-. <d f>-. <c g'>-. f,->(\noBeam |
    g4) f'8( ef  d f ef d |
    \clef treble c8 bf' a c  bf <fs a> <g bf>) c,->(\noBeam |
    d4) c'8( bf  \stemDown a c bf a) |
    
    \barNumberCheck 41
    \stemNeutral g8( <f a> <e g> <d f>)  g( <f a> <e g> <d f>) |
    g8( <f a> <e g> <d f>)  <cs g'>-> <d g> <cs g'>-> <d g> |
    <cs g'>8-> <d g> <cs g'>-> <d g>  <cs g'>-> <d g> <cs g'>-> <d g> |
    \clef bass << { d4 s } \\ { bf8( a g g,) } >> a16-.( a'_\pp gs a
    gs a gs a) |
    bf,16-.->( a'_\pp gs a  gs a gs a)  a,-.( a' gs a  gs a gs a) |
    \override TextScript.X-offset = -1
    g,!16-.->( a'_\ppMarkup gs a  gs a gs a)  a,-.( a' gs a  gs a gs a) |
    bf,16-.->( a'_\ppMarkup gs a  gs a gs a)  a,-.-> r r8 g'!8( f |
    \revert TextScript.X-offset
    e8 g f e  d c'! bf! a |
    
    \barNumberCheck 49
    g8 f'! e d  cs d bf! a |
    g8-.) \clef treble g'4->( a8  bf-.) g( a a, |
    bf8-.) g( a a'  bf-.) g( a a,) |
    \clef bass d8( g, a a,)  \stemDown d( g, a a') |
    \alternative {
      {
        \voiceTwo d,8( g,) a[ a]  d,4 \oneVoice d'16-\slurShapeA ( e f g) |
      }
      {
        \voiceTwo d8( g,) a[ a] d,2->\fermata |
      }
    }
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4\f\< s2.\! |
    s8 s2..\mf |
    s2 s\cresc |
    s2 s4.\f s8\< |
    s16\! s8.\p s8 s16.\< s32\! s4. s16.\< s32\! |
    s2 s\p |
    s2\f s\p |
    s4\f s\< s16\sf s8.\p s4\cresc |
    
    \barNumberCheck 9
    s2. s4-\tweak Y-offset -1 \f |
    s16 s\p s8\cresc s2. |
    s2. s4-\tweak Y-offset 1 \f |
    s16 s\p s8\cresc s2. |
    s1\f |
    s1 |
    s16\sf s8.\p s8..\< s32\! s4 s16 s8.\< |
    s8\! s\< s4 s8-\tweak X-offset -1 \mf\> s4.-\tweak X-offset 1 \p |
    
    \barNumberCheck 17
    s2. s8.-\tweak Y-offset -2.5 \> s16\! |
    s16\sf s2...\p |
    s16 s4..\< s16\f s4..\p |
    s16 s4..\< s16\f s4..\p |
    s16\sf s8.\pp s2.\cresc |
    s1 |
    s2 s8 s4.\f |
    s1 |
    
    \barNumberCheck 25
    s2 s\f |
    \alternative {
      { s1 * 2 | }
      { s1 | }
    }    
  }
  \repeat volta 2 {
    s16 s4..\p s8.\> s16\! s4 |
    s8.\> s16\! s8 s\f\> s8 s4.\p |
    s2 s8\> s4.\pp |
    s2\< s\p |
    
    \barNumberCheck 33
    s2\mf s\p |
    s2\mf s4\f s\dim |
    s4. s8\f s\> s4.\p |
    s4. s8-\tweak Y-offset 1 \f s8 s4.-\tweak Y-offset 0 \p |
    s2.\cresc s4\mf |
    s16 s\p s8\cresc s2. |
    s2. s4\f |
    s16 s\p s8\cresc s2. |
    
    \barNumberCheck 41
    s1\f |
    s1 * 2 |
    s2 s8\sf s4.\p |
    s2 s\< |
    s16\f s4..\p s2\< |
    s16\f s4..\p s16\sf s8.\pp s4\cresc |
    s1 |
    
    \barNumberCheck 49
    s1 |
    s8 s2..\f |
    s1 |
    s1\f |
    \alternative {
      { s1 | }
      { s4 s^\rall s2\f | }
    }
  }
}

tempi = {
  \repeat volta 2 { 
    \tempo "Presto" 4 = 112 
    s1 * 24 
    
    \barNumberCheck 25
    s1
    \alternative {
      { s1 * 2 | }
      { s1 | }
    }
  }
  \repeat volta 2 {
    s1 * 4 |
    
    \barNumberCheck 33
    s1 * 16 |
    
    \barNumberCheck 49
    s1 * 4 |
    \set Score.tempoHideNote = ##t
    \alternative {
      { s4 \tempo 4 = 92 s \tempo 4 = 50 s \tempo 4= 112 s | }
      { s4 \tempo 4 = 92 s \tempo 4 = 50 s2 | }
    }
  }
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 3 \pageBreak
  
  % page 3
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 4
  s1 * 3 \break
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
