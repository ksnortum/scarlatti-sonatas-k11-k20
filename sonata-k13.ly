%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.13"
  source = "https://ks15.imslp.org/files/imglnks/usimg/c/ce/IMSLP626422-PMLP330481-Sonata_K._13_(as_L._486).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . -1) (0 . 12) (0 . 4)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 5) (-0.5 . -6)) \etc

moveNoteColumnA = \once \override Score.NoteColumn.X-offset = 2
moveNoteColumnB = \once \override Score.NoteColumn.X-offset = 1

moveClefA = \once \override Staff.Clef.extra-offset = #'(0.5 . 0)

%
% Music
%

global = {
  \time 2/4
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \partial 4 g''8-. d-. |
    b8->(\prall a16 g  fs e d c |
    b16 c d4) g8-. |
    fs16( b a e'  d g fs c' |
    b16 a g fs  g8-.) g,-. |
    fs16( b a e'  d g fs c' |
    b16 a g fs  g8-.) d-. |
    e16( e,) e-. e-.  e-. e-. e( g |
    e8-.) e'-. e(\prall d16 c) |
    
    \barNumberCheck 9
    d16( d,) d-. d-.  d-. d-. d( g |
    d8-.) d'-. d(\prall c16 b) |
    c16( d,) d-. d-.  d-. d-. d( fs |
    d8-.) c'-. c(\prall b16 a) |
    b16( g,) g-. g-.  g-. g-. g( b |
    g8-.) b'-. b(\prall a16 g) |
    d'16( a fs d)  b'( d, b g) |
    d''16( a fs d)  b'( d, b g) |
    
    \barNumberCheck 17
    d''8-. d,->~ 
    << 
      { \hideNoteHead d s | } 
      \new Voice { \voiceOne r16 c'_. bf_(\prall a) | } 
    >>
    bf16( a d cs  g' f e d |
    a'16 cs, d e  a,-.) c-. bf(\prall a) |
    bf16( a d cs  g' f e d |
    a'16 cs, d e  a,8-.) a'16( e) |
    e16( f a d,)  d( e a e) |
    e16( f a d,)  d( e a e) |
    e16( f a d,)  d( e a cs,) |
    
    \barNumberCheck 25
    cs16( d a' a,)  a( bf) a'( g,) |
    g16( a) a'( f,)  f( g) a'( e,) |
    e16( f) f( g)  g( f e d |
    \stemDown a'16 cs b a  g' f e d |
    a'16 cs, d e  a,-.) a'-. g(\prall fs!) |
    g16( e cs g  e-.) g' fs(\prall e) |
    fs16( d a fs  d-.) fs'-. e(\prall d) |
    e16( cs g e  cs-.) e'-. d(\prall cs) |
    
    \barNumberCheck 33
    \stemNeutral d16( b gs d  b-.) d'-. cs(\prall b) |
    cs16( a e cs  a-.) g'-. fs(\prall e) |
    fs( d e b'  a d, e cs |
    d16-.) d'( cs b  cs g' fs e |
    fs16 c d b'  a d, e cs |
    d8-.) a'->(~  a16 g fs e |
    fs16 b a8->)~  a16( g fs e |
    fs16 b a8->)~  a16( g fs e |
    
    \barNumberCheck 41
    fs16 d e b'  a d, e cs |
    d16 b a8->)~  a16 g'( fs e |
    fs16 b, a8->)~  a16 g'( fs e |
    fs16 b, a8->)~  a16 g'( fs e |
    <a, a'>8-.) <b a'>-. <cs a'>-. <d a'>-. |
    <e a>8-. <fs a>-. <g a>-. <fs a>-. |
    <e a>8-. <cs a'>-. <d a'>-. <e a>-. |
    <fs a>16( <e g> <d fs> <cs e>  <d fs>8-.) <cs e>-. |
    
    \barNumberCheck 49
    a16( <d fs> b <e g>  a, <d fs> g, <cs e> |
    a16 <d fs> b <e g>  a, <d fs> g, <cs e> |
    a16 <d fs>) g,( e'  fs, d' e, cs') |
    r16 fs,-\slurShapeB ( d a'  fs d' a fs' |
    d16 a' fs d  a fs d a |
    << 
      { \staffDown \moveNoteColumnA d,,4->) } 
      \new Voice { r4 } 
    >>
  }
  \repeat volta 2 {
    \staffUp d''''8-. a-. |
    fs8(\prall e16 d  cs b a g |
    fs16 g a4) d,8-. |
    
    \barNumberCheck 57
    cs16( fs e a  g d' cs g' |
    fs16 e d cs  d8-.) d,-. |
    cs16( fs e a  g d' cs g' |
    fs16 e d cs  d8-.) a-. |
    b16( d,) d-. d-.  d-. d-. d( g |
    d8-.) b'-. b(\prall a16 g) |
    a16( d,) d-. d-.  d-. d-. d( fs |
    d8-.)\noBeam a''-. a(\prall g16 fs |
    
    \barNumberCheck 65
    g16-.)\noBeam <e, g>-. q-. q-.  q-. q-. q-. q-. |
    q8-.\noBeam g'-. g(\prall fs16 e |
    fs16-.)\noBeam <d, fs>-. q-. q-.  q-. q-. q-. q-. |
    q8-.\noBeam fs'-. fs(\prall e16 d) |
    a'16( e cs a)  fs'( d a fs) |
    e'16( cs g e)  d'( a fs d) |
    cs'8(\prall b16 a)  r d-. c(\prall b) |
    c16( b e ds  a' g! fs e |
    
    \barNumberCheck 73
    b'16 ds, e fs)  b,-. d-. c(\prall b) |
    c16( b e ds  a' g! fs e |
    b'16 ds, e fs  b,8-.) b'16( b,) |
    b16( c) a'( a,)  a( b) b'( b,) |
    b16( c) a'( a,)  a( b) b'( b,) |
    b16( c) c( e)  e( d) d( c) |
    c16( b) b'( g,)  g( a) a'( a,) |
    a16( b) b'( g,)  g( a) a'( a,) |
    
    \barNumberCheck 81
    a16( b) b( c)  c( d) d( ef) |
    ef16( g) g( a)  a( cs,) cs( b) |
    d16( a) a( bf)  bf( fs) fs( g) |
    a16( d a fs  d) d'-. c(\prall b!) |
    c16( a fs c  a-.) c'-. b(\prall a) |
    b16( g d b  g-.) b'-. a(\prall g) |
    a16( fs d a  fs-.) a'-. g(\prall fs) |
    g16( e cs g  e-.) g'-. fs(\prall e) |
    
    \barNumberCheck 89
    fs16( d' cs b  cs g' fs e |
    a16 fs d a  d,8-.) d'16( a) |
    a16( bf d g,)  g( a d fs,) |
    fs16( g) bf'( d,)  d( ef) c'( fs,) |
    fs16( g) d( g,)  g( a) d( fs,) |
    fs16( g) bf'( d,)  d( ef) c'( c,) |
    c16( d) bf'( bf,)  bf( c) a'( a,) |
    a16( b! d g,)  g( a d fs,) |
    
    \barNumberCheck 97
    fs16( g) d'( b  e c fs d |
    g16 g, a e'  d g, a fs |
    g8-.) d'->(~  d16 c b a |
    b16 e d8->)~  d16( c b a |
    b16 e d8->)~  d16( c b a |
    b16 g a e'  \stemDown d g, a fs |
    g16-.) a'( g8->)~  g16 c,( b a |
    b16 a' g8->)~  g16 c,( b a | 
    
    \barNumberCheck 105
    b16 a' g8->)~  g16 c,( b a | 
    \stemNeutral <d, d'>8-.) <e d'>-. <fs d'>-. <g d'>-. |
    <a d>8-. <b d>-. <c d>-. <b d>-. |
    <a d>8-. d-. d-. <a' c>-. |
    d,16( <g b>) e( <a c>)  d,( <g b>) c,( <fs a>) |
    d16( <g b>) e( <a c>)  d,( <g b>) c,( <fs a>) |
    <b, d>( b') <a, c>( a')  <g, b>( g') a,( fs') |
    g16-\slurShapeA _( d b g \clef bass d b g d |
    << 
      { \staffDown \moveNoteColumnB g,4->) } 
      \new Voice { r4 } 
    >>
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \partial 4 r4 |
    R2 |
    g8-. d-. b_(\prall a16 g |
    d'4 d, |
    g8-.) g'-. b,_(\prall a16 g |
    d'4 d, |
    g8-.) g'-. b(\prall a16 g |
    c4) \clef treble c'16-. c-. c( e |
    c8-.) \clef bass c,-. c(\prall b16 a |
    
    \barNumberCheck 9
    b4) \clef treble b'16-. b-. b( d |
    b8-.) \clef bass b,-. b(\prall a16 g |
    d4) \clef treble \stemDown a''16-. a-. a( c |
    << 
      { a8-.) \clef bass d,,_. d4 | s4 } 
      \new Voice { \voiceThree s8 a'-. a(\prall g16 fs | g,4) } 
    >>
    \clef treble b''16-. b-. b( d |
    b8-.) \clef bass g,-. g(\prall fs16 e |
    \stemNeutral d,8-.) d'-. d,-. d'-. |
    d,8-. d'-. d,-. d'-. |
    
    \barNumberCheck 17
    d,4-> \voiceUp d''8 \staffDown \clef treble \oneVoice fs( |
    g8-.) g-. bf-. bf-. |
    a,4. fs'8( |
    g-.) g-. bf-. bf-. |
    a,4. cs'8( |
    d8-.) bf-. g-. a-. |
    d8-. bf-. g-. a-. |
    d8-. bf-. g-. a-. |
    
    \barNumberCheck 25
    f8-. d-. g-. e-. |
    f8-. d-. e-. cs-. |
    d8-. c!-. \moveClefA \clef bass bf-. bf,-. |
    a8-. a'( bf) bf,-. |
    a4-> r |
    <a e' g>4-> r |
    <a d fs a>4-> r |
    <a e' a>4-> r |
    
    \barNumberCheck 33
    <a d e b'>4-> r |
    << { <e' g a>4-> s8 } \\ { a,4. } >> <cs a'>8( |
    <d a'>8-.) g-. a-. a,-. |
    d8-. g( a cs |
    d8 g a-.) a,-. |
    d,16->( d') fs( a  b, g' cs, a') |
    d,,16->( d') fs( a  b, g' cs, a') |
    % first 16th, fs in source
    \parenthesize d,,16->( d') fs( a  b, g' cs, a' |
    
    \barNumberCheck 41
    d,8-.) g,( a-.) a,-. |
    \stemDown d,16->( d') fs( a  b, g' cs, a') |
    d,,16->( d') fs( a  b, g' cs, a') |
    d,,16->( d') fs( a  b, g' cs, a') |
    \stemUp fs,16( d' g, e'  a, fs' b, g' |
    \stemNeutral cs, a' d, b'  e, cs' fs, d' |
    g,16 e' a, fs'  b, g' cs, a' |
    d,8-.) g,( a-.) a,-. |
    
    \barNumberCheck 49
    d8-. g-. a-. a,-. |
    d8-. g-. a-. a,-. |
    d8-. g-. a-. a,-. |
    d,16-. r r8 r4 |
    R2 |
    s4
  }
  \repeat volta 2 {
    r4 |
    R2 |
    d''8-. a-. fs(\prall e16 d |
    
    \barNumberCheck 57
    a'4 a, |
    d,8-.) d'-. fs(\prall e16 d |
    a'4 a, |
    d,8-.) d'-. fs(\prall e16 d |
    g4) \clef treble b'16-. b-. b( d |
    b8-.) \clef bass g,-. g(\prall fs16 e |
    fs4) \clef treble a'16-. a-. a( d |
    a8-.)\noBeam fs-. fs(\prall e16 d |
    
    \barNumberCheck 65
    <a e'>16-.) r r8 cs'16-. cs-. cs( e |
    cs8-.)\noBeam \clef bass 
    <<
      { e,8-. e(\prall d16 cs) | }
      \\
      { a8 a4 | }
    >> 
    d,4 \clef treble d''16-. d-. d( fs |
    d8-.) \clef bass d,-. d(\prall cs16 b |
    a,8-.) a'-. a,-. a'-. |
    a,8-. a'-. a,-. a'-. |
    a,4->( a'8-.)\noBeam \clef treble gs'( |
    a8-.) a-. c-. c-. |
    
    \barNumberCheck 73
    b4. gs8( |
    a8-.) a-. c-. c-. |
    b4. gs8( |
    a8-.) f-. d-. e-. |
    a8-. f-. d-. e-. |
    a,8-. a'-. fs!-. d-. |
    g8-. e-. c-. d-. |
    g8-. e-. c-. d-. |
    
    \barNumberCheck 81
    g,8-. f'-. ef-. d-. |
    c8-. bf'-. a-. g-. |
    fs!8-. d-. ef-. c-. |
    \clef bass d,4-> r |
    <d a' c>4-> r |
    <d g b>4-> r |
    <d, a' d>4-> r |
    <d cs' e>4-> r |
    
    \barNumberCheck 89
    <d a' d>4-> <d cs' e>4-> |
    <d a' d>4-> r8 fs''( |
    g8-.) ef-. c-. d-. |
    bf8-. g-. c-. a-. |
    bf8-. g-. c-. a-. |
    bf8-. g-. \clef treble c'-. a-. |
    bf8-. g-. a-. fs-. |
    \clef bass g8-. b,!-. c-. a-. |
    
    \barNumberCheck 97
    b8-. g-. c-. a-. |
    b8( c d) d,-. |
    g,16( g') b( d  e, c' fs, d') |
    g,,16( g') b( d  e, c' fs, d') |
    g,,16( g') b( d  e, c' fs, d' |
    g,8-.) c,( d-.) d,-. |
    g16( g') b( d  e, c' fs, d') |
    g,,16( g') b( d  e, c' fs, d') |
    
    \barNumberCheck 105
    g,,16( g') b( d  e, c' fs, d') |
    b,16( g' c, a'  d, b' e, c' |
    fs,16 d' g, e'  a, fs' b, g' |
    \clef treble c,16 a' d, b'  e, c' fs, d' |
    \clef bass g,8-.) c,-. d-. d,-. |
    g'8-. c,-. d-. d,-. |
    g'8-. c,-. d-. d,-. |
    g,4-> r |
    s4
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 4 s4\mf |
    s2 * 2 |
    s4..\< s16\! |
    s2 |
    s4..\< s16\! |
    s2 |
    s8\f s4.\p |
    s4 s-\tweak Y-offset 0.5 \f |
    
    \barNumberCheck 9
    s8 s4.-\tweak Y-offset -1 \p |
    s4 s-\tweak Y-offset 0.5 \f |
    s8 s4.\p |
    s4 s-\tweak X-offset -1.5 -\tweak Y-offset 1 \f |
    s8 s4.-\tweak Y-offset -1 \p |
    s4 s-\tweak Y-offset 1 \f |
    s2 * 2 |
    
    \barNumberCheck 17
    s4. s8-\tweak Y-offset 0.5 \p |
    s4..\< s16\! |
    s4\f s16 s8.\p |
    s4..\< s16\! |
    s4.\f s8\p |
    s2 * 2 |
    s2\cresc |
    
    \barNumberCheck 25
    s2 * 2 |
    s2\f |
    s2 * 5 |
    
    \barNumberCheck 33
    s2 * 5 |
    s8 s4.\p |
    s2\cresc |
    s2 |
    
    \barNumberCheck 41
    s2 |
    s2\f |
    s2 * 2 |
    s8 s4.\p |
    s2\cresc |
    s2 |
    s2-\tweak Y-offset 1 \f |
    
    \barNumberCheck 49
    s2-\tweak Y-offset -1 \p |
    s2\cresc |
    s2 |
    s2\f |
    s2 |
    s4
  }
  \repeat volta 2 {
    s4\f |
    s2 |
    s4. s8\mf |
    
    \barNumberCheck 57
    s4..\< s16\! |
    s2 |
    s4..\< s16\! |
    s2 |
    s8\f s4.\p |
    s4 s-\tweak Y-offset 1 \f |
    s8 s4.\p |
    s4 s\f |
    
    \barNumberCheck 65
    s16 s4..\p |
    s4 s-\tweak Y-offset 1 -\tweak X-offset -1.5 \f |
    s16 s4..\p |
    s4 s-\tweak Y-offset 0.5 \f |
    s2 * 2 |
    s4 s16 s8.\p |
    s4..\< s16\! |
    
    \barNumberCheck 73
    s4\f s16 s8.\p |
    s4..\< s16\! |
    s4.\f s8\p |
    s2 * 2 |
    s8.\< s16\! s8.\> s16\! |
    s2 * 2 |
    
    \barNumberCheck 81
    s2\cresc |
    s2 * 2 |
    s2\f |
    s2 * 4 |
    
    \barNumberCheck 89
    s2 |
    s4. s8-\tweak Y-offset 1 \mf |
    s8 s4.-\tweak Y-offset 0.5 \p |
    s8 s4.\f |
    s8 s4.\p |
    s8 s4.\f |
    s2 |
    s8 s4.\mf |
    
    \barNumberCheck 97
    s8 s4.\< |
    s2\! |
    s8 s4.\p |
    s2 * 3 |
    s16 s4..\f |
    s2 |
    
    \barNumberCheck 105
    s2 |
    s16 s4..\p |
    s2\cresc |
    s2 |
    s2-\tweak X-offset -2.5 \f |
    s2 * 3 |
    s4
  }
}

pedal = {
  \repeat volta 2 {
    \partial 4 s4 |
    s2 * 6 |
    s4 s\sustainOn |
    s2\sustainOff |
    
    \barNumberCheck 9
    s4 s\sustainOn |
    s2\sustainOff |
    s4 s\sustainOn |
    s2\sustainOff |
    s4 s\sustainOn |
    s2\sustainOff |
    s2 * 2 |
    
    \barNumberCheck 17
    s2 * 8 |
    
    \barNumberCheck 25
    s2 * 5 |
    s4.\sustainOn s8\sustainOff |
    s4.\sustainOn s8\sustainOff |
    s4.\sustainOn s8\sustainOff |
    
    \barNumberCheck 33
    s4.\sustainOn s8\sustainOff |
    s4.\sustainOn s8\sustainOff |
    s2 * 3 |
    s4\sustainOn s\sustainOff |
    s4\sustainOn s\sustainOff |
    s4\sustainOn s\sustainOff |
    
    \barNumberCheck 41
    s2 |
    s4\sustainOn s\sustainOff |
    s4\sustainOn s\sustainOff |
    s4\sustainOn s\sustainOff |
    s2 * 4 |
    
    \barNumberCheck 49
    s2 * 3 |
    s2\sustainOn |
    s2 |
    s4-\tweak X-offset 2 \sustainOff
  }
  \repeat volta 2 {
    s4 |
    s2 * 2 |
    
    \barNumberCheck 57
    s2 * 4 |
    s4 s\sustainOn |
    s2\sustainOff |
    s4 s\sustainOn |
    s2\sustainOff |
    
    \barNumberCheck 65
    s4 s\sustainOn |
    s2\sustainOff |
    s4 s\sustainOn |
    s2\sustainOff |
    s2 * 4 |
    
    \barNumberCheck 73
    s2 * 8 |
    
    \barNumberCheck 81
    s2 * 4 |
    s4..\sustainOn s16\sustainOff |
    s4..\sustainOn s16\sustainOff |
    s4..-\tweak Y-offset -1.5 \sustainOn s16\sustainOff |
    s4..-\tweak Y-offset -1.5 \sustainOn s16\sustainOff |
    
    \barNumberCheck 89
    s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff |
    s8.\sustainOn s16\sustainOff s4 |
    s2 * 6 |
    
    \barNumberCheck 97
    s2 * 2 |
    s4\sustainOn s\sustainOff |
    s4\sustainOn s\sustainOff |
    s4\sustainOn s\sustainOff |
    s2 |
    s4\sustainOn s\sustainOff |
    s4\sustainOn s\sustainOff |
    
    \barNumberCheck 105
    s4\sustainOn s\sustainOff |
    s2 * 6 |
    s2\sustainOn |
    s4-\tweak X-offset 1 \sustainOff
  }
}

tempi = {  
  \repeat volta 2 {
    \tempo "Presto" 4 = 116
    \partial 4 s4 |
    s2 * 48 |
    
    \barNumberCheck 49
    s2 * 4 |
    \set Score.tempoHideNote = ##t
    \tempo 4 = 108 s4 \tempo 4 = 100 s |
    \tempo 4 = 80 s4
  }
  \repeat volta 2 {
    \tempo 4 = 116
    s4 |
    s2 * 2 |
    
    \barNumberCheck 57
    s2 * 48 |
    
    \barNumberCheck 105
    s2 * 7 |
    \tempo 4 = 108 s4 \tempo 4 = 100 s |
    \tempo 4 = 80 s4
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  s2 * 4 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \pageBreak
  
  % page 2
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 s4 \break
  
  % page 3
  s4 s2 * 4 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \pageBreak
  
  % page 4
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi \pedal >>
    \new Staff = "lower" << \leftHand \dynamics \tempi \pedal >>
  >>
  \midi {}
}
