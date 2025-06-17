%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.14"
  source = "https://s9.imslp.org/files/imglnks/usimg/0/07/IMSLP626423-PMLP330492-Sonata_K._14_(as_L._387).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (4 . 0) (4 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 12/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \partial 8 \tuplet 3/2 { d''16( e fs } 
    g8-.) d-. b-.  g-. d-. b-.  r4 r8_\pocoRit  r g''-. d-. |
    r8^\aTempo \tuplet 5/4 { e16( fs g a b } c8-.) a-. fs-.  r
    \tuplet 5/4 { d16( e fs g a } b8-.) g-. e-. |
    r8 \tuplet 5/4 { c16( d e fs g } a8-.) fs-. d-.  r
    \tuplet 5/4 { b16( c d e fs } g8-.) d-. fs-. |
    fs8( e) d-.  d( c) b-.  \tag layout { a4.~\prallprall }
      \tag midi { a4.~\prall } a8 d-. d,-. |
    \tag layout { b'4.~\prallprall } \tag midi { b4.~\prall } b8 d-. d,-.
      \tag layout { a'4.~\prallprall } \tag midi { a4.~\prall } a8 d-. d,-. |
    r8 \tuplet 5/4 { b'16( cs d e fs } g8-.) e-. cs-.  r
    \tuplet 5/4 { a16( b cs d e } fs8-.) d-. b-. |
    r8 \tuplet 5/4 { g16( a b cs d } e8-.) cs-. a-.  r
    \tuplet 5/4 { fs16( g a b cs } d8-.) a-. cs-. |
    b8( g' fs->~  fs e d)  \tag layout { cs4.~\prallprall }
      \tag midi { cs4.~\prall } cs8\noBeam
    \tuplet 5/4 { d16( e f g a } |
    
    \barNumberCheck 9
    bf8 a g  f e d  cs d e  a,) r r |
    \set subdivideBeams = ##t
    \omit TupletBracket
    g'8( f e  d cs d  e4.)~ e8\noBeam \tuplet 3/2 8 { cs16( d e  fs g a }
    bf8 a g  f e d  <a a'>4.->)~ q8 q4~ |
    q8 q4~ q8 q4~ q8 q4~ q8 q4~ |
    q8 q4~ a'8 a4  a8( g) fs-.  g( fs) e-. |
    <a, a'>4. q q q |
    q4. q q a' |
    a8( g) fs-.  g( fs) e-.  fs( d) b'-. \afterGrace 7/8 e,4.(\trill 
    { d16[ e] } |
    
    \barNumberCheck 17
    fs8 d) b'-. \afterGrace 7/8 e,4.(\trill { d16[ e] }  fs8 d) b'-. 
      \acciaccatura { fs16 } \afterGrace 7/8 e4.(\trill { d16[ e] } |
    d8-.) a-. fs-.  d-. a-. fs-.  r4 r8 r4
  }
  \repeat volta 2 {
    \tuplet 3/2 { a'16( b cs } |
    d8-.) a-. fs-.  d-. a-. fs-.  r4 r8  r_\pocoRit d''-. a-. |
    r8^\aTempo \tuplet 5/4 { b16( cs d e fs }  g8-.) e-. cs-.  r
    \tuplet 5/4 { a16( b cs d e }  fs8-.) d-. b-. |
    r8 \tuplet 5/4 { g16( a b cs e }  e8-.) d-\slurShapeA ( cs  b as b
      e d cs |
    b8 as b  e d cs)
    << 
      { \voiceOne b'-\slurShapeB ( a! g } 
      \new Voice { \voiceFour b,4. } 
    >>
    \oneVoice fs'8 g e |
    ds8-.)\noBeam \tuplet 3/2 8 { b16( c! ds  e fs g }  a8 g fs  e ds e  a g fs |
    e8 ds e  a g fs  b a g  fs g e |
    
    \barNumberCheck 25
    <b b'>4.)~ q8 q4~  q8 q4~ q8 q4~ |
    q8 q4~ q8 q4~  q8 q4~ b'8 b4 |
    b8( a) g-.  a( g) fs-.  g-.\noBeam \tuplet 5/4 { e16( fs g a b } c4.)~ |
    c8\noBeam \tuplet 5/4 { d,16( e fs g a } b4.)~  b8\noBeam
    \tuplet 5/4 { c,16( d e fs g } a4.)~ |
    a8\noBeam \tuplet 5/4 { b,16( c d e fs } g4.)~  g8\noBeam
    \tuplet 5/4 { a,16( b c d e } fs4.)~ |
    \set subdivideBeams = ##f
    fs8\noBeam \stemDown g,16( a b c  d8 c b  e d c  b a g) |
    \stemNeutral \tag layout { a4.~\prallprall } \tag midi { a4.~\prall } a8
      d-. d,-.  \tag layout { b'4.~\prallprall } \tag midi { b4.~\prall } b8
      d-. d,-. |
    \tag layout { a'4.~\prallprall } \tag midi { a4.~\prall } a8 d-. d,-.
      \tag layout { b'4.~\prallprall } \tag midi { b4.~\prall } b8 d-. d,-. |
    
    \barNumberCheck 33
    \tag layout { a'4.\prallprall } \tag midi { a4.~\prall } c'8( bf a  g fs g
      c bf a |
    g8 fs g  c bf a  g fs g  d c bf |
    a8 b! c  b a g  <d d'>4.)~ q8 q4~ |
    q8 q4~ q8 q4~  q8 q4~ q8 q4~ |
    q8 q4~ d'8 d4  d8( c) b-.  a-. b-. g-. |
    <d d'>4. q q q |
    q4. q q d' |
    d8( c) b-.  c( b) a-.  b( g) g'-.  \afterGrace 7/8 a,4.(\trill { g16[ a] } |
    
    \barNumberCheck 41
    b8 g) g'-.  \afterGrace 7/8 a,4.(\trill { g16[ a] } b8 g) b'-.
    \acciaccatura { b16 } a4.(\trill |
    g8-.) d-. b-.  g-. d-. b-. \clef bass g-. d-. b-. r4
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \partial 8 r8 |
    r2. g8-. d-. b-.  g-. r r |
    \clef treble c''8-. r r a4.(  b8-.) r r g4.( |
    a8-.) r r fs4.(  g8-.) r r b4.( |
    c4) b8-.  a4 g8-. \clef bass d-. a-. fs-. d,4.-> |
    d''8-. b-. g-. d,4.->  d''8-. a-. fs-. d,4.-> |
    g''8-. r r e4.(  fs8-.) r r d4.( |
    e8-.) r r cs4.(  d8-.) r r fs4.( |
    g4. gs a a,) |
    
    \barNumberCheck 9
    \set subdivideBeams = ##t
    \omit TupletBracket
    r2. r4 r8 r \clef treble \tuplet 3/2 8 { cs16( d e  f g a } |
    bf8 a g  f e d  cs d e a,4.) |
    g'8( f e  d c! bf) \clef bass  r8 a,-\slurShapeG ( b!  cs4 d8 |
    e4 fs!8 g4 a8 b4 cs8 \clef treble d4 e8 |
    fs4 g8 a4 b8 cs4) d8-. g,4 a8-. |
    \clef bass r a,,( b  cs) cs( d  e) e( fs  g) g( a |
    b8) b( cs \clef treble d) d( e  fs) fs( g  a) a-\slurShapeH ( b |
    cs4) d8-. g,4 a8-. d,4 g8-. a4( a,8 |
    
    \barNumberCheck 17
    d4) g8-. a4( a,8  d4) g8-. a4( a,8 |
    \parenthesize d8-.) r r  r4 r8 \clef bass d,-. a-. fs-. d4->
  }
  \repeat volta 2 {
    r8 |
    r2. d'8-. a fs  d8 r r |
    \clef treble g''8-. r r e4.(  fs8) r r d4.( |
    e4.)~ e4 fs8-\slurShapeC (  g4 fs8 e4 fs8 |
    g4 fs8 e4 fs8 g4. a4. |
    b8-.) r r r4 b8(  c4 b8 a4 b8 |
    c4 b8 a4 b8  g4 e8  a b c) |
    
    \barNumberCheck 25
    \clef bass r8 b,,8-\slurShapeD ( cs ds4 e8  fs4 g8 a4 b8 |
    cs4 \clef treble ds8 e4 fs8  g4 a8 b4 cs8 |
    ds4) e8-. a,4 b8-.  e,4.~ e8 c'-. a-. |
    \clef bass d,,!4.->~ d8 b''-. g-.  c,,4.->~ c8 a''-. fs-. |
    b,,4.->~ b8 g''-. e-.  a,,4.~ a8 fs''-. d-. |
    g,,4.-> b'8( a g  c b a  g fs e) |
    d'8-. a-. fs-. d,4.->  d''8-. b-. g-. d,4.-> |
    d''8-. a-. fs-. d,4.->  d''8-. b-. g-. d,4.-> |
    
    \barNumberCheck 33
    d4. r4 \parenthesize d''8-\slurShapeE (  ef4-> d8 c4 d8 |
    ef4-> d8 c4 d8  ef8 d c  bf a g |
    f8 e! d  g f e)  r d,( e fs4 g8 |
    a4 b8 c4 d8  e4 fs8 g4 a8 |
    b4 c8 d4 e8  fs4) g8-. c,-. d-. e-. |
    r8 d,,( e  fs) fs( g  a) a( b  c) c-\slurShapeF ( d |
    e8) e( fs  g) g( a  b) b( c  d) d( e |
    fs4) g8-. c,4( d8  g,4) b8-. c4( d8 |
    
    \barNumberCheck 41
    g,4) b8-. c4( d8  g,4) b,8-. c4( d8 |
    g,2.)~ g4. g,4->
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 8 s8\f\< |
    s4.\! s4 s8\> s4. s4.\!\p |
    \override Hairpin.Y-offset = 1
    s4\< s16. s32\! s4\> s8\! s4\< s16. s32\! s4\> s8\! |
    \revert Hairpin.Y-offset
    s4\< s16. s32\! s4\> s8\! s4\< s16. s32\! s4\> s8\! |
    s4\> s8\! s4\> s8\! s4.\mf s8 s4\p |
    s4.\mf s8 s4\p s4.\mf s8 s4\p |
    s4-\tweak Y-offset 0.5 \< s16. s32\! s4-\tweak Y-offset 0.5 \> s8\! 
      s4-\tweak Y-offset -0.5 \< s16. s32\! s4-\tweak Y-offset -0.5 \> s8\! |
    s4-\tweak Y-offset -0.5 \< s16. s32\! s4-\tweak Y-offset -0.5 \> s8\!
      s4-\tweak Y-offset 0.75 \< s16. s32\! s4.-\tweak Y-offset 0.25 \mf |
    s2. s4.-\tweak Y-offset 1 \> s8\! s8..-\tweak Y-offset 1 \< s32\! |
    
    \barNumberCheck 9
    s4.\> s4 s8\! s4.\p s8 s8..\< s32\! |
    s4.\> s4 s8\! s4.\p s8 s8..\< s32\! |
    s4.\> s4 s8\! s8\mf s4\p s4.\cresc |
    s1. |
    s2. s\f |
    s1.\p\cresc |
    s1. |
    s4.\f\> s4\> s8\! s2. |
    
    \barNumberCheck 17
    s1. |
    s2.\f s4. s4
  }
  \repeat volta 2 {
    s8\f\< |
    s2.\! s4.\> s4 s8\p |
    s4\< s16. s32\! s4\> s8\! s4\< s16. s32\! s4\> s8\! |
    s4\< s16. s32\! s4\> s8\! s2.-\tweak Y-offset 1.5 \p-\tweak Y-offset 1.5
      \cresc |  
    s1. |
    s8\f\< s8.. s32\! s4\> s8\! s2.-\tweak Y-offset 1 \p-\tweak Y-offset 1
      \cresc |
    s1. |
    
    \barNumberCheck 25
    s4.\fp s\cresc s2. |
    s1. |
    s2.\f s8 s4\< s4.\! |
    s8 s4\< s4.\! s8 s4\< s4.\! |
    s8 s4\< s4.\! s8 s4\< s4.\! |
    s8 s4-\tweak Y-offset 0.5 \< s4.\! s4.-\tweak Y-offset 1 \> s4 s8\! |
    s4.\mf s8 s4\p s4.\mf s8 s4\p |
    s4.\mf s8 s4\p s4.\mf s8 s4\p |
    
    \barNumberCheck 33
    s4.\mf s\p s2. |
    s2. s8 s4-\tweak Y-offset 1 \< s8 s4\! |
    s4.\> s4 s8\!  s4.\p s\cresc |
    s1. |
    s2. s4.-\tweak Y-offset 1 \f s4-\tweak Y-offset 1 \> s8\! |
    s4.\p s\cresc s2. |
    s1. | 
    s4\f\> s8\! s4\> s8\! s2. |
    
    \barNumberCheck 41
    s1. |
    s2.\f s4. s4
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Presto" 4. = 108
    \partial 8 s8 |
    s1. * 16 |
    
    \barNumberCheck 17
    s1. |
    \set Score.tempoHideNote = ##t
    s4. \tempo 4. = 100 s \tempo 4. = 92 s \tempo 4. = 84 s4
  }
  \repeat volta 2 {
    \tempo 4. = 108
    s8 |
    s1. * 6 |
    
    \barNumberCheck 25
    s1. * 16 |
    
    \barNumberCheck 41
    s1. |
    s4. \tempo 4. = 100 s \tempo 4. = 92 s \tempo 4. = 84 s4
  }
}

forceBreaks = {
  % page 1
  \partial 8 s8 s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 2 s2. s4. s4 \pageBreak
  
  % page 2
  s8 s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \pageBreak
  
  % page 3
  s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \break
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
