%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in E major"
  opus = "K.20"
  source = "https://s9.imslp.org/files/imglnks/usimg/d/d7/IMSLP626429-PMLP7426-Sonata_K._20_(as_L._375).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 1.5) (0 . 1.5) (0 . 0.75) (0 . 0.75)) Slur
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 1) (-0.25 . 2) (-0.25 . 0))
                        ((0.25 . 0) (0.25 . 0) (-0.25 . 0) (-0.25 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = 
  \shape #'((0 . 1.25) (-0.2 . 1.25) (-0.5 . 0.75) (-0.5 . 0.75)) Slur
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . -0.25) (0 . -0.25)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.25) (0 . 0.25))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.25) (0 . 0.25))
                        ((0 . 0) (0 . 1) (0 . 2) (0 . -1))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . -0.25) (0 . -0.25))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 2/4
  \key e \major
  \beamEighthNotes.24
}

rightHandUpper = \relative {
  \repeat volta 2 {
    <gs'' b>4-> <fs a>\prall |
    \appoggiatura { a16 } <e gs>4 r |
    <b gs'>4-> <a fs'>\prall |
    \appoggiatura { \slurShapeA fs'16 } <gs, e'>4 r |
    <gs' b>4-> <fs a>\prall |
    \appoggiatura { a16 } <e gs>4 r |
    <b gs'>4-> <a fs'>\prall |
    \appoggiatura { \slurShapeA fs'16 } <gs, e'>4 r |
    
    \barNumberCheck 9
    \grace { gs'32[( a] } b4.) d,8( |
    cs8) a'-. gs-. fs-. |
    \grace { gs32[( a] } b4.) d,8( |
    cs8) a'-. gs-. fs-. |
    \grace { gs32[( a] } b4.) e,8( |
    ds!8) a'-. gs-. fs-. |
    gs16( fs e4 ds8~ |
    ds8 e4.) |
    
    \barNumberCheck 17
    \grace { e32[( fs] } g4.) b,8( |
    c8) fs-. e-. ds-. |
    \grace { e32[( fs] } g4.) b,8( |
    c8) fs-. e-. ds-. |
    \grace { g32[( a] } b4.) b,8( |
    c8) <fs a>4->( <e g>8) |
    q16( fs e4) e8(~ |
    e8 fs4.) |
    
    \barNumberCheck 25
    \voiceOne b2~ |
    b8 as[( b) as-.] |
    b2~ |
    b8 as[( b) as-.] |
    b4 a!~ |
    a8 gs[( a) gs-.] |
    a2~ |
    a8 gs[( a) gs-.] |
    
    \barNumberCheck 33
    a2~ |
    a8 gs[( a) b-.] |
    \oneVoice <c, c'>8-. e( ds!) e-. |
    c'16( b a g  fs8-.) e-. |
    b'8-. ds,-. cs!(\prall b) |
    a'8-. cs,-. b(\prall a) |
    gs'8-. b,-. a(\prall gs) |
    fs'8-. a,-. gs(\prall fs) |
    
    \barNumberCheck 41
    gs16-\slurShapeB ( a b cs  ds cs b a |
    b16 cs ds e  fs e ds cs |
    ds16 e fs gs  a gs fs e |
    fs16 e fs gs  e ds e fs |
    ds16 e fs ds  e ds e fs |
    ds16 e fs ds  e ds e fs |
    b4.) a8-. |
    gs8-. f-. e-. d-. |
    
    \barNumberCheck 49
    b'8( c) gs( a) |
    e8( f) ds!( e) |
    as8( b) fs( g) |
    ds8( e) b( c) |
    gs'!8( a) e( fs) |
    cs8( e) ds( fs) |
    g16-\slurShapeC \( b, c d \grace { c16( } c8.)\trill b32 as |
    b16 cs!32 d e16 fs \grace { e16( } e8.)\trill d32 cs |
    
    \barNumberCheck 57
    d16 e32 fs g16 a \grace { g16( } g8.) fs32 e |
    fs16 gs! as b \tag layout { as8.-\insideSlur \prallprall }
      \tag midi { as8.\trill } gs16 |
    as16 gs fs e  ds cs b as |
    b16 cs ds e  fs ds e cs |
    ds16 b e cs  ds b cs as\) |
    b'16->( fs ds b  fs' ds b fs |
    ds'16 b fs ds  b' fs ds b) |
    \tag layout { b4->\prallprall } \tag midi { b4->\prall } r |
  }
  \repeat volta 2 {
    \barNumberCheck 65
    <b' ds fs>4-> <b e gs>-> |
    <b ds fs>4 r |
    <b ds fs a>4-> <b e gs>-> |
    <b ds fs>-> r |
    <b ds fs b>4-> <b ds fs a>-> |
    <b e gs>4-> r |
    <d b'>4-> <c a'>-> |
    \appoggiatura { \slurShapeD a'16 } <b, gs'>4 r |
    
    \barNumberCheck 73
    b'8-. d,-. c(\prall b) |
    c'8-. e,-. d(\prall c) |
    b'8-. f-. e(\prall d) |
    a'8-. e-. d(\prall c) |
    b'16( a gs f  e d c b) |
    b4.( c8) |
    \voiceOne a'16( b c4.) |
    fs,16( gs a4.) |
    
    \barNumberCheck 81
    ds,16( e fs4.) |
    \oneVoice g,16-\slurShapeE ( as b8. ds16 e8~ |
    e16 fs g8. as16 b8~ |
    b16) as,-\slurShapeF ( b8. cs16 d8~ |
    d16 es fs8. as16 b8~ |
    b16) gs,( a8. b16 c8~ |
    c16 ds e8. gs16 a8~ |
    a8-.) cs,!-. b(\prall a) |
    
    \barNumberCheck 89
    gs'8-. b,-. a(\prall gs) |
    fs'8-. a,-. gs(\prall fs) |
    e'8-. gs,-. fs(\prall e) |
    ds16-\slurShapeG ( e fs gs  a b cs ds |
    e16 ds cs b  a gs fs e |
    ds16 e fs gs  a b cs ds |
    e16 ds cs b  a gs fs e |
    ds16 e fs gs  a b cs ds |
    
    \barNumberCheck 97
    e16 ds cs b  a gs fs e |
    ds16 fs b ds,  e fs gs a |
    gs16 a b a  gs fs e ds |
    e16 gs b e  b gs e b |
    e16 gs e b \clef bass e b gs e) |
    \tag layout { e4->\prallprall } \tag midi { e4->\prall } r |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2 * 24 |
    
    \barNumberCheck 25
    \voiceFour d''8( fs) e-. d-. |
    cs8-. g'[( fs) e-.] |
    d8( fs) e-. d-. |
    cs8-. g'[( fs) e-.] |
    d8( f) e-. d-. |
    b8-. f'[( e) d-.] |
    c8( e) d-. c-. |
    b8-. f'[( e) d-.] |
    
    \barNumberCheck 33
    c8( e) d-. c-. |
    b8-. f'[( e) d-.] |
    \hideNoteHead \parenthesize c8 s4. |
    s2 * 5 |
    
    \barNumberCheck 41
    s2 * 24 |
  }
  \repeat volta 2 {
    \barNumberCheck 65
    s2 * 8 |
    
    \barNumberCheck 73
    s2 * 6 |
    r8 e8-. ds!-. e-. |
    r8 c-. b-. c-. |
    
    \barNumberCheck 81
    r8 a-. g-. fs-. |
    s2 * 7 |
    
    \barNumberCheck 89
    s2 * 8 |
    
    \barNumberCheck 97
    s2 * 6 |
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
    s2 * 24 |
    
    \barNumberCheck 25
    s2 |
    \voiceThree r8 e''( d) cs-. |
    s2 |
    r8 e( d) cs-. |
    s2 |
    r8 d( c) b-. |
    s2 |
    r8 d( c) b-. |
    
    \barNumberCheck 33
    s2 |
    r8 d( c) b-. |
    s2 * 6 |
    
    \barNumberCheck 41
    s2 * 24 |
  }
  \repeat volta 2 {
    \barNumberCheck 65
    s2 * 32 |
    
    \barNumberCheck 97
    s2 * 6 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R2 |
    e'8( b) e,-. e,-. |
    R2 |
    e''8( b) e,-. e,-. |
    R2 |
    e''8( b) e,-. e,-. |
    R2 |
    e''8( b) e,-. e,-. |
    
    \barNumberCheck 9
    \clef treble e''8-. gs-. fs-. e-. |
    a8-. cs-. b-. a-. |
    e8-. gs-. fs-. e-. |
    a8-. cs-. b-. a-. |
    e8-. gs-. fs-. e-. |
    b'4-- b,-- |
    e_( \clef bass e, |
    e,2) |
    
    \barNumberCheck 17
    \clef treble e''8-. g-. fs-. e-. |
    a8-. c-. b-. a-. |
    e8-. g-. fs-. e-. |
    a8-. c-. b-. a-. |
    e8-. g-. fs-. e-. |
    a4( a,) |
    <b b'>4 \clef bass b,( |
    b,2) |
    
    \barNumberCheck 25
    \clef treble b'''8( d) cs-. b-. |
    \voiceTwo fs4-> r |
    \oneVoice b8( d) cs-. b-. |
    \voiceTwo fs4-> r |
    \oneVoice b8( d) cs-. b-. |
    % source, missing accent
    \voiceTwo e,4-> r |
    \oneVoice a8( c) b-. a-. |
    \voiceTwo e4-> r |
    
    \barNumberCheck 33
    \oneVoice a8( c) b-. a-. |
    \voiceTwo e4-> r |
    \oneVoice a4-> r |
    a,4( a') |
    b,8-. b'-. a( gs) |
    b,8-. a'-. gs( fs) |
    b,8-. gs'-. fs( e) |
    b8-. fs'-. e( ds) |
    
    \barNumberCheck 41
    e16_( fs gs a  b a gs fs |
    gs16 a b cs  ds cs b a |
    b16 cs ds e  fs e ds cs |
    ds16 cs ds b  cs b cs fs, |
    b16 cs ds b  cs b cs fs, |
    b16 cs ds b  cs b cs fs, |
    b8-.) b-. b-. b-. |
    b8-. b-. b-. b-. |
    
    \barNumberCheck 49
    <b c>8( <a c>) q-. q-. |
    q8-. q-. q-. q-. |
    <a! b>8( <g b>) q-. q-. |
    q-. q-. g-. g-. |
    <g a>8( <fs a>) q-. q-. |
    q8-. q-. q-. q-. |
    e8_( ds e fs |
    g8 fs g a |
    
    \barNumberCheck 57
    b8 a b cs |
    d cs d e |
    fs16 e ds! cs  b as gs fs |
    gs8) gs_( as fs |
    b8-.) \clef bass e,( fs) fs,-. |
    b,4-> <b, b'>-> |
    q4-> q-> |
    q4-> r |
  }
  \repeat volta 2 {
    \barNumberCheck 65
    R2 |
    b''8->( b,) b-. b-. |
    R2 |
    b8->( b,) b-. b-. |
    R2 |
    e''8->( e,) e-. e-. |
    R2 |
    e8->( e,) e-. e-. |
    
    \barNumberCheck 73
    \clef treble e''8-. b'-. a( gs) |
    e8-. c'-. b( a) |
    e8-. d'-. c( b) |
    e,8-. c'-. b( a) |
    \clef bass e4( gs,) |
    a,8( e' a4) |
    \clef treble r8 c'8-. b-. a-. |
    r8 a-. g-. fs-. |
    
    \barNumberCheck 81
    r8 fs-. e-. ds-. |
    e8-. <e g>-. q-. q-. |
    q8-. q-. q-. q-. |
    <d fs>8-. q-. q-. q-. |
    q8-. q-. q-. q-. |
    <c e>8-. q-. q-. q-. |
    q8-. q-. q-. q-. |
    b8-. a'-. gs-. fs-. |
    
    \barNumberCheck 89
    b,8-. gs'-. fs-. e-. |
    b8-. fs'-. e-. ds-. |
    b8-. e-. ds-. cs-. |
    b16-\slurShapeH _( cs ds e  fs gs a b |
    cs16 b a gs  fs e ds cs |
    b16 cs ds e  fs gs a b |
    cs16 b a gs  fs e ds cs |
    b16 cs ds e  fs gs a b |
    
    \barNumberCheck 97
    cs16 b a gs  fs e ds cs |
    \clef bass b8) a( gs) a-. |
    b4( b, |
    e4) r |
    e,4-> e-> |
    e4-> r |
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
    s2\f |
    s2 * 7 |
    
    \barNumberCheck 9
    s4.\f s8\> |
    s8\! s4.\p |
    s4.\f s8\> |
    s8\! s4.\p |
    s4.\f s8\> |
    s8\! s4.\p |
    s2\mf |
    s2 |
    
    \barNumberCheck 17
    s4.\f s8\p |
    s2 |
    s4.\f s8\p |
    s2 |
    s2\f |
    s2 |
    s8 s4.\> |
    s8 s4.\! |
    
    \barNumberCheck 25
    s4\f s\p |
    s8 s4\> s8\p |
    s4\f s\p |
    s8 s4\> s8\p |
    % source, \p is missing
    s4\f s\p |
    s8 s4\> s8\p |
    s4\f s\p |
    s8 s4\> s8\p |
    
    \barNumberCheck 33
    s4\f s\p |
    s8 s4\> s8\f |
    s8 s4\> s8\f |
    s2 |
    s2\f |
    s2 * 3 |
    
    \barNumberCheck 41
    s4\p s\cresc |
    s2 * 5 |
    s4.\f\> s8\p |
    s2 |
    
    \barNumberCheck 49
    s4\f\> s\p |
    s2 |
    s4\f\> s\p |
    s2 |
    s4\f\> s\p |
    s2 |
    s2-\tweak Y-offset -1 \cresc |
    s2 |
    
    \barNumberCheck 57
    s2 * 2 |
    s2\f |
    s2 * 5 |
  }
  \repeat volta 2 {
    \barNumberCheck 65
    s2\f |
    s2 * 7 |
    
    \barNumberCheck 73
    s8\f s4.\p |
    s8\f s4.\p |
    s8\f s4.\p |
    s8\f s4.\p |
    s2\f |
    s4.\> s8\! |
    s8\< s\f s4\p |
    s8\< s\f s4\p |
    
    \barNumberCheck 81
    s8\< s\f s4\p |
    s4\p s\< |
    s4. s8\f |
    s4\p s\< |
    s4. s8\f |
    s4\p s\< |
    s4. s8\f |
    s2\f |
    
    \barNumberCheck 89
    s2 * 3 |
    s4..\p\< s16\! |
    s4..\> s16\! |
    s4..\< s16\! |
    s4..\> s16\! |
    s2\cresc |
    
    \barNumberCheck 97
    s2 * 3 |
    s2\f |
    s2 * 2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Presto" 4 = 152
    s2 * 56 |
    
    \barNumberCheck 57
    s2 * 6 |
    \set Score.tempoHideNote = ##t
    \tempo 4 = 138 s4 \tempo 4 = 126 s
    \tempo 4 = 100 s2 |
  }
  \repeat volta 2 {
    \barNumberCheck 65
    \tempo 4 = 152
    s2 * 32 |
    
    \barNumberCheck 97
    s2 * 4 |
    \tempo 4 = 138 s4 \tempo 4 = 126 s
    \tempo 4 = 100 s2 |
  }
}

forceBreaks = {
  % page 1
  s2 * 6 \break
  s2 * 6 \break
  \grace { s16 } s2 * 6 \break
  \grace { s16 } s2 * 6 \break
  s2 * 5 \break
  s2 * 5 \pageBreak
  
  % page 2
  s2 * 5 \break
  s2 * 5 \break
  s2 * 6 \break
  s2 * 5 \break
  s2 * 4 \break
  s2 * 5 \pageBreak
  
  % page 3
  s2 * 8 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  
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
