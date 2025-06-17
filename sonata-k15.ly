%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in E minor"
  opus = "K.15"
  source = "https://s9.imslp.org/files/imglnks/usimg/c/c0/IMSLP626424-PMLP330511-Sonata_K._15_(as_L._374).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 2) (0.25 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.25 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -0.25))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (-0.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 2) (0.25 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key e \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    <g'' b>8-.-> \staffDown <e, g>-._\p <fs a>-. |
    \staffUp <g' b>8-.-> \staffDown <g, b>-._\p <a cs>-. |
    \staffUp ds16( fs a, e' b fs') |
    g8(\prall fs16 g e8-.) |
    <g b>8-.-> \staffDown <e, g>-._\p <fs a>-. |
    \staffUp <g' b>8-.-> \staffDown <g, b>-._\p <a cs>-. |
    \staffUp ds16( fs b, a' b, <e g>) |
    <e g>8( <ds fs>4)\prall |
    
    \barNumberCheck 9
    g8( a) fs-. |
    g8( a) fs-. |
    g8( a) fs-. |
    g8( fs e |
    d8 e) cs-. |
    d8( e) cs-. |
    d8( e) cs-. |
    d8-\slurShapeD ( c! b |
    
    \barNumberCheck 17
    c8 d e |
    d8 c b |
    c8 d e |
    d8 e fs |
    << 
      { \voiceOne g8 fs) g-. | } 
      \new Voice { \voiceFour d4. | } 
    >>
    << { fs8( g) a-. } \\ { d,4. } >> |
    << { b'8( a) b-. } \\ { d,4. } >> |
    << { a'8( g) fs-. } \\ { d4. } >> |
    
    \barNumberCheck 25
    << { g8( fs) g-. } \\ { d4. } >> |
    << { fs8( g) a-. } \\ { d,4. } >> |
    << { b'8( a) b-. } \\ { d,4. } >> |
    \oneVoice d16-\slurShapeE ( fs e g fs a |
    g16 b fs a e g |
    d16 fs e g fs a |
    g16 b fs a e g |
    d16 fs c e b d |
    
    \barNumberCheck 33
    c16 e b d a c |
    b16 d a c g b |
    a16 c g b fs a |
    \stemUp g16 b a c b d |
    a16 c g b fs a |
    g16 b a c b d |
    a16 c g b fs a |
    g8-.) r r |
    
    \barNumberCheck 41
    r8 r16 d( g b |
    \stemNeutral d16 g, b d g d |
    e c b g' a, fs') |
    <g b>16->( d e d c b) |
    <fs' a>16->( c d c b a) |
    <g' b>16->( d e d c b) |
    <fs' a>16->( c d c b a) |
    <g' b>16->( d e d c b) |
    
    \barNumberCheck 49
    <fs' a>16->-\slurShapeF ( c d c b a |
    b16) g( b d g d |
    e16 c b g' a, fs' |
    g16 b d, g b, d |
    g,16 b d, g b, d) |
    R4. |
  }
  \repeat volta 2 {
    <g' b>8-.-> \staffDown <g,, b>-._\p <a c>-. |
    \staffUp <g'' b>8-.-> \staffDown <b,, d>-._\p <cs e>-. |
    
    \barNumberCheck 57
    \staffUp fs16( d' g, e' d cs |
    d16 a fs d) r8 |
    <fs' a>8-.-> \staffDown <d, fs>-._\p <e g>-. |
    \staffUp <fs' a>8-.-> \staffDown <fs, a>-._\p <gs b>-. |
    \staffUp c!16( c' d, b' a gs |
    a16 e c a) r8 |
    e'16( c' e, b' ds, a' |
    e16 c' e, b' ds, a' |
    
    \barNumberCheck 65
    e16 c' e, b' ds, a' |
    c,16 g' b, fs' a, e') |
    c16( g' b, fs' a, e' |
    c16 g' b, fs' a, e' |
    ds16 b e b fs' b, |
    g'16 b, a' g fs e |
    b'16 fs ds b) r8 |
    e8( fs) ds-. |
    
    \barNumberCheck 73
    e8( fs) ds-. |
    e8( fs) ds-. |
    e8( d! c |
    b8 c) a-. |
    b8( c) a-. |
    b8( c) a-. |
    b8( cs ds |
    << 
      { \voiceOne e8 ds) e-. | } 
      \new Voice { \voiceFour b4. | } 
    >>
    
    \barNumberCheck 81
    << { ds8( e) fs-. } \\ { b,4. } >> |
    << { g'8( fs) g-. } \\ { b,4. } >> |
    << { fs'8( e) ds-. } \\ { b4. } >> |
    << { e8( ds) e-. } \\ { b4. } >> |
    << { ds8( e) fs-. } \\ { b,4. } >> |
    << { g'8( fs) g-. } \\ { b,4. } >> |
    \oneVoice b16-\slurShapeA ( ds cs e ds fs |
    e16 g d! fs c! e |
    
    \barNumberCheck 89
    b16 ds cs e ds fs |
    e16 g d! fs c! e |
    b16ds a c g b |
    a16 c g b fs a |
    g16 b fs a e g |
    fs16 a e g ds fs |
    e16 g fs a g b |
    fs16 a e g ds fs |
    
    \barNumberCheck 97
    e16 g fs a g b |
    fs16 a e g ds fs |
    e8) r r |
    r8 r16 b( e g |
    \stemDown b16 e, g b e b |
    a'16 fs b e, fs ds) |
    <e g>16->( b c b a g) |
    <fs' a>16->( a, b a g fs) |
    
    \barNumberCheck 105
    <e' g>16->( b c b a g) |
    <fs' a>16->( a, b a g fs) |
    <e' g>16->( b c b a g) |
    <fs' a>16->( a, b a g fs |
    g16) e( g b e b |
    a'16 fs b e, fs ds |
    e16 g e b g e |
    \clef bass b16 g e b) r8 |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    s8 \clef treble s4 |
    s4. |
    <b b'>8_( cs ds |
    \clef bass e8 b e,-.) |
    s8 \clef treble s4 |
    s4. |
    b''8( ds,) e-. |
    b4. |
    
    \barNumberCheck 9
    b'16-\slurShapeB ( d! c e d c |
    b16 d c e d c |
    b16 d c e d c |
    b16 c a b g a |
    fs16)-\slurShapeC ( a g b a g |
    fs16 a g b a g |
    fs16 a g b a g |
    fs16 d e fs g fs |
    
    \barNumberCheck 17
    e16 c fs d g e |
    fs16 d e fs g fs |
    e16 c fs d g e |
    fs16 d g d a' d, |
    b'16 d, a' d, b' d, |
    a'16 d, g d fs d |
    g16 d fs d g d |
    fs16 d g d a' d, |
    
    \barNumberCheck 25
    b'16 d, a' d, b' d, |
    a'16 d, g d fs d |
    g16 d fs d g d) |
    d8( d') d,-. |
    d8( d') d,-. |
    d8( d') d,-. |
    d8( d') d,-. |
    d8-. r r |
    
    \barNumberCheck 33
    \clef bass d,8( d') d,-. |
    d8( d') d,-. |
    d8( d') d,-. |
    d8( d') d,-. |
    d8( d') d,-. |
    d8( d') d,-. |
    d8( d') d,-. |
    g16( d g b d g, |
    
    \barNumberCheck 41
    b16 d g) r r8 |
    g,,4.-> |
    <c c'>8-. << { d'( c) } \\ { d,4 } >> |
    <g, g'>8-. <b b'>-. <g g'>-. |
    <a a'>8-. <fs fs'>-. <d d'>-. |
    <g g'>8-. <b b'>-. <g g'>-. |
    <a a'>8-. <fs fs'>-. <d d'>-. |
    <g g'>8-. <b b'>-. <g g'>-. |
    
    \barNumberCheck 49
    <a a'>8-. <fs fs'>-. <d d'>-. |
    <g g'>8-. <a a'>-. <b b'>-. |
    <c c'>8-. << { d'( c) } \\ { d,4 } >> |
    g,4.-> |
    g4.-> |
    \tag layout { g4.->\prallprall } \tag midi { g4.->\prall } |
  }
  \repeat volta 2 {
    s4. * 2 |
    
    \barNumberCheck 57
    d''8( e a, |
    d8 a) d,,-. |
    s8 \clef treble s4 |
    s4. |
    a'''8( b e, |
    a8 e) \clef bass a,,-. |
    \clef treble <a'' c>( <g b>) <fs a>-. |
    <a c>( <g b>) <fs a>-. |
    
    \barNumberCheck 65
    <a c>( <g b>) <fs a>-. |
    <e g>8( <d! fs>) <c e>-. |
    <e g>8( <d fs>) <c e>-. |
    <e g>8( <d fs>) <c e>-. |
    << 
      { <b ds>8( } 
      \new Voice { \hideNoteHead \parenthesize ds8 } 
    >>
    <cs e> <ds fs> |
    <e g>)\noBeam
    << 
      { \voiceThree fs16( e ds cs | } 
      \new Voice { \voiceTwo a4 | } 
    >>
    \clef bass \oneVoice b8 fs) b,-. |
    \clef treble g''16( b a c b a |
    
    \barNumberCheck 73
    g16 b a c b a |
    g16 b a c b a |
    g16 a fs g e fs |
    ds16 fs e g fs e |
    ds16 fs e g fs e |
    ds16 fs e g fs e |
    ds16 b e b fs' b, |
    g'16 b, fs' b, g' b, |
    
    \barNumberCheck 81
    fs'16 b, e b ds b |
    e16 b ds b e b |
    ds16 b e b fs' b, |
    g'16 b, fs' b, g' b, |
    fs'16 b, e b ds b |
    e16 b ds b e b) |
    b8( b') b,-. |
    b8( b') b,-. |
    
    \barNumberCheck 89
    b8( b') b,-. |
    b8( b') b,-. |
    b8-. r r |
    \clef bass b,8( b') b,-. |
    b8( b') b,-. |
    b8( b') b,-. |
    b8( b') b,-. |
    b8( b') b,-. |
    
    \barNumberCheck 97
    b8( b') b,-. |
    b8( b') b,-. |
    e16( b e g b e, |
    g16 b e) r r8 |
    e,,4.-> |
    a'8( b) b,-. |
    <e, e'>8-. <g g'>-. <e e'>-. |
    <fs fs'>8-. <ds ds'>-. <b b'>-. |
    
    \barNumberCheck 105
    <e e'>8-. <g g'>-. <e e'>-. |
    <fs fs'>8-. <ds ds'>-. <b b'>-. |
    <e e'>8-. <g g'>-. <e e'>-. |
    <fs fs'>8-. <ds ds'>-. <b b'>-. |
    <e e'>8-. <fs fs'>-. <g g'>-. |
    <a a'>8-. <b b'>->-. b,-.\noBeam |
    e4.-> |
    r8 r e8-> |
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset -2 \f |
    s4.-\tweak Y-offset -2 \f |
    s4.-\tweak Y-offset -1 \p |
    \tag layout { s8\sf } \tag midi { s8\f } s4\p |
    s4.\f |
    s4.\f |
    s4.\p |
    s8\> s4\! |
    
    \barNumberCheck 9
    s4.\p |
    s4. * 2 |
    s4\< s16 s\! |
    s8\> s\! s\p |
    s4. * 3 |
    
    \barNumberCheck 17
    s4. * 2 |
    s4.\cresc |
    s4. |
    s4.\mf |
    s4. * 3 |
    
    \barNumberCheck 25
    s4 s8-\tweak Y-offset 0.5 \p |
    s4. * 2 |
    s4-\tweak Y-offset 1 \< s16 s\! |
    s4-\tweak Y-offset 1 \> s16 s\! |
    s4\< s16 s\! |
    s4\> s16 s\! |
    s4. |
    
    \barNumberCheck 33
    s4. * 3 |
    s4\< s16 s\! |
    s4\> s16 s\! |
    s4\< s16 s\! |
    s4\> s16 s\! |
    s4.-\tweak Y-offset -1 \cresc |
    
    \barNumberCheck 41
    s4. * 3 |
    s4.-\tweak extra-offset #'(0 . -1) \f |
    s4. * 4 |
    
    \barNumberCheck 49
    s4. * 6 |
  }
  \repeat volta 2 {
    s4.\f |
    s4.\f |
    
    \barNumberCheck 57
    s4.\p |
    s4 s8\sf |
    s4.-\tweak Y-offset -2 \f |
    s4.\f |
    s4.\p |
    s4 s8\sf |
    s4.\p |
    s4. |
    
    \barNumberCheck 65
    s4. * 4 |
    s4.-\tweak extra-offset #'(0 . -1) \cresc |
    s4. |
    s4.\f |
    s4.\p |
    
    \barNumberCheck 73
    s4. * 2 |
    s4\< s16 s\! |
    s4\> s8\p |
    s4. * 2 |
    s4\< s16 s\! |
    s4.\mf |
    
    \barNumberCheck 81
    s4. * 3 |
    s4 s8-\tweak Y-offset 0.5 \p |
    s4. * 2 |
    s4\< s16 s\! |
    s4\> s16 s\! |
    
    \barNumberCheck 89
    s4\< s16 s\! |
    s4\> s16 s\! |
    s4. * 4 |
    s4\< s16 s\! |
    s4\> s16 s\! |
    
    \barNumberCheck 97
    s4\< s16 s\! |
    s4\> s16 s\! |
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    s4. |
    
    \barNumberCheck 105
    s4. * 8 |
  }
}

tempi = {
  \repeat volta 2 {
    \once \override Score.MetronomeMark.Y-offset = 6
    \tempo "Allegro" 4. = 72 
    s4. * 48 |
    
    \barNumberCheck 49
    s4. * 4 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 66 s \tempo 4. = 60 s |
    \tempo 4. = 56 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4. * 2 |
    
    \barNumberCheck 57
    s4. * 48 |
    
    \barNumberCheck 105
    s4. * 7 |
    \tempo 4. = 66 s8 \tempo 4. = 60 s \tempo 4. = 40 s |
  }
}

forceBreaks = {
  % page 1
  s4. * 4 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 2
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 3
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 4 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 4
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
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
