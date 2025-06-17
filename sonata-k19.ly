%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

% Grace notes at beginning of the piece causes barcheck fails w/ articulate
#(ly:expect-warning-times 11 "barcheck failed at")
#(ly:expect-warning "articulation failed to steal")

\header { 
  title = "Sonata in F minor"
  opus = "K.19"
  source = "https://s9.imslp.org/files/imglnks/usimg/8/8b/IMSLP626428-PMLP330561-Sonata_K._19_(as_L._383).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (3 . 0) (3 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeC = \shape #'((0 . 3.25) (0 . 3.5) (0.75 . 3.5) (0.75 . 3.25)) \etc
slurShapeD = \shape #'((0 . 3.25) (0 . 3.5) (0.75 . 3.5) (0.75 . 3.25)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . -1))
                      ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . -0.1) (0.25 . -0.1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (-0.25 . 0.25) (-0.25 . 0.25))
                        ((0 . 0.25) (0 . 1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 4.1) (0 . 4.1) (0 . 4.1) (0 . 4.1))
                      ) \etc

%
% Music
%

global = {
  \time 2/4
  \key f \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \grace { f''32[( g] } af4)( g8 f16 e) |
    \appoggiatura { e16^> } f4.( af8) |
    af16( g) g( f)  f( e) e( f) |
    \appoggiatura { f16^> } g4( c,) |
    \grace { f32[( g] } af4)( g8 f16 e) |
    \appoggiatura { e16^> } f4.( af8 |
    g16 bf af g)  af( f) g( e) |
    \appoggiatura { e16 } f4. c8( |
    
    \barNumberCheck 9
    df16 c df e  f e f df) |
    df8->( c4) c8( |
    df16 c df e  f e f df) |
    df8->( c~  c16) c( df ef! |
    df16 ef c df  bf c af bf |
    g16 af f g  ef f df ef |
    c16 ef df c  df f ef d |
    ef16) f-\slurShapeI ( g af  bf c df! bf |
    
    \barNumberCheck 17
    c16 df ef f  g af bf c) |
    ef,16( c' df, bf'  c, af' bf, g' |
    af,16 f' g, ef'  f, df' ef, c' |
    bf16 af g f ef4) |
    ef'16-\slurShapeJ ( c' df, bf'  c, af' bf, g' |
    af,16 f' g, ef'  f, df' ef, c' |
    bf16 af g f  ef df c bf |
    c df ef df  c bf af g |
    
    \barNumberCheck 25
    af16 c bf af  d)^\aTempo d( ef f |
    ef16) ef( f g  f) f( g af |
    g16) g( af bf  af c bf df |
    c16 ef df f  ef g f af |
    g16 af g f  ef df c bf |
    c16 df ef df  \stemDown c bf af g) |
    af'16( c bf af  g f ef df |
    c16) af'( g f  ef df c bf |
    
    \barNumberCheck 33
    c16 f ef df  c bf af g |
    af16) c( bf af  \stemNeutral g f ef df |
    c16 f ef df  c bf af g |
    af16) c-\slurShapeE ( bf af  ef' c af' ef |
    c'16 af ef' c  af' ef c ef |
    \alternative {
      { af,4) r }
      { af4-\slurShapeD ^\repeatTie r16 af'( bf c }
    }
  }
  \repeat volta 2 {
    f,16) f( g af  d,) d( ef f) |
    
    \barNumberCheck 41
    \appoggiatura { f16 } ef4 r16 af( bf c |
    f,16) f( g af  d,) d( ef f) |
    \appoggiatura { f16 } ef4 r16 g( af bf |
    e,16) e( f g  bf,) bf( c df) |
    df8->( c~ c16) g'( af bf |
    e,16) e( f g  bf,) bf( c df) |
    df8->( c~ c16) f( g af |
    ef!16) ef( f g  d) d( ef f |
    
    \barNumberCheck 49
    c16) c( d ef  b) b( c d |
    c16 g'f ef  d c b c) |
    \appoggiatura { c16 } b4. g8( |
    af16 g af b  c b c af) |
    af8( g4) g8( |
    af16 g af b  c b c af) |
    af8( g~  g16) g( af bf |
    af16 bf g af  f g ef f |
    
    \barNumberCheck 57
    d16 ef c d  b g a b |
    c16-.)d( ef f  g a b g |
    c d ef f  g a b g) |
    ef16-\slurShapeK ( c' d, bf'!  c, af' bf, g' |
    af,16 f' g, ef'  f, d' ef, c' |
    d,16) b'( c d  ef c d b) |
    ef16( c' d, bf'!  c, af' bf, g' |
    af,16 f' g, ef'  f, d' ef, c' |
    
    \barNumberCheck 65
    d,16) b'( c d  ef c d b |
    c16) d( e f  g-.) bf,!( af g |
    af16-.)g'( f g  af c, df! c |
    df16-.) af'( g af  bf af g f |
    e16 f e df  c bf af g |
    af c bf af  g f e f) |
    f8->( e4)\prall c8( |
    df16 c df e  f e f df) |
    
    \barNumberCheck 73
    df8( c4) c8( |
    df16 c df e  f e f df) |
    df8( c~  c16) c( d e |
    d16) d( e f  e) e( f g |
    f16) f( g af  g) g( af bf |
    af16) af( bf c  bf) bf( c df |
    c16) c( d  ef  d) d( e f |
    e16 f e df!  c bf af g) |
    
    \barNumberCheck 81
    af16( f' g, ef'!  f, df' ef, c' |
    df,16 bf' c, af'  bf, g' af, f' |
    c16) e( f g  af f g e) |
    af16( f' g, ef'  f, df' ef, c' |
    df,16 bf' c, af'  bf, g' af, f' |
    c16) e( f g  af f g e) |
    f'16( af g f  e df c bf |
    af16 df c bf  af g f e |
    
    \barNumberCheck 89
    f16) af-\slurShapeM ^( g f  e df c bf |
    af16 df c bf  af g f e |
    f16) af-\slurShapeB ( g f  c' af f' c |
    af' f c' af  f' c af c |
    \alternative {
      { f,4) r16 af'-\slurShapeA ( bf c) | }
      { f,,4-\slurShapeC ^\repeatTie r | \bar "|." }
    }
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \grace { s16 }
    \clef treble
    <f' af c>4( <g bf> |
    <af c>8[ <g bf> <af c>^~ <f c'>)] |
    <bf df>8-.([ <af c>-. <g bf>-. <f af>-.)] |
    c8^( c'-.)~  c16 bf( af g) |
    <f af c>4( <g bf> |
    <af c>8[ <g bf> <af c>^~ <f c'>)] |
    << { df'4 } \\ { bf8( g) } >> c-.( c,-.) |
    \clef bass f,4( f'-\insideSlur ->~ |
    
    \barNumberCheck 9
    f8[ f-. f-.)] \clef treble bf'-.-\slurShapeF \(
    bf8->([ af-.) af-.\)] f,^(~ |
    f8[ f-. f-.)] bf'-.-\slurShapeG \( |
    bf8->([ af) af-.\)] af-\slurShapeH ( |
    bf8[ af g f] |
    ef[ df c bf] |
    \stemDown af[ c bf af] |
    \stemNeutral g16) r r8 r4 |
    
    \barNumberCheck 17
    R2 |
    c8[( g af ef] |
    \clef bass f8[ c df af] |
    ef8) ef'-.(~  ef16 df c bf |
    af8) g'[( af ef] |
    f8[ c df af] |
    ef8-.) ef,4 g'8->( |
    af8) df,[( ef ef,] |
    
    \barNumberCheck 25
    af4.) <f' af>8( |
    <g bf>8-.) q(  <d bf'>-.) q( |
    <df! bf'>-.) q(  <c c'>-.) <g' bf>(\noBeam |
    <af c>8 <bf df> \clef treble <c ef> <df f> |
    <ef g>8[ <f af> <g bf> <ef g>] |
    af8->) \clef bass df,[( ef ef,] |
    af8) \clef treble af'4->(_\mf_\> g8 |
    af8)\! af4->(_\> g8\! |
    
    \barNumberCheck 33
    af8) \clef bass df,[( ef ef,] |
    <af c>8) q4->(_\mf_\> <g bf>8\! |
    <af c>8) df,[(_\p ef ef,] |
    af4) r |
    <af af'>4 r |
    \alternative {
      { q4 r | }
      { q4 r | }
    }
  }
  \repeat volta 2 {
    r8 \clef treble <af'' c>-.([ <af bf>-. q-.)] |
    
    \barNumberCheck 41
    <g bf>-.[( q-. q-.]) r |
    r8 <af c>-.([ <af bf>-. q-.)] |
    <g bf>-.[( q-. q-.]) q-.( |
    q8-. q-.)
    << 
      { \voiceOne <e g>_._( q_.) | } 
      \new Voice { \voiceOne \hideNotes \parenthesize e \parenthesize e | } 
    >>
    << 
      { <f af>_._([ q_. q_.)] } 
      \new Voice { 
        \voiceOne \hideNotes \parenthesize f \parenthesize f \parenthesize f
      } 
    >>
    \oneVoice \stemUp <af c>( |
    <g bf>8-. q-.)
    << 
      { \voiceOne <e g>_._( q_.) | } 
      \new Voice { \voiceOne \hideNotes \parenthesize e \parenthesize e | } 
    >>
    << 
      { <f af>_._([ q_. q_.)] } 
      \new Voice { 
        \voiceOne \hideNotes \parenthesize f \parenthesize f \parenthesize f
      } 
    >>
    \oneVoice \stemUp <af c>( |
    <g bf>-.) q-.( <f af>-.) q-.( |
    
    \barNumberCheck 49
    <ef g>8-.) q-.( <d f>-.) q-.( |
    <ef g>8-.) q-.( <f af>-.) q-.( |
    g-.) g,[^( g-. g-.]) |
    r8 c-.([ c-.)] \stemNeutral <f' af>-.\( |
    q8->([ <ef g>) q-.\)] c,^(~ |
    c8[ c-. c-.)] <f' af>-.\( |
    q->([ <ef g>) q-.\)] ef( |
    f8[ ef d c] |
    
    \barNumberCheck 57
    b8[ af g f] |
    ef16) r r8 r4 |
    R2 |
    c'8([ g af ef] |
    \clef bass f8[ c b c] |
    g8-.) <f f'>[( <g ef'>) <g d'>-.] |
    \clef treble c'8([ g af ef] |
    \clef bass f8[ c b c] |
    
    \barNumberCheck 65
    g8-.) \stemDown f8[( g) g,]( |
    \stemNeutral c,8) \clef treble <c'' e>-.[( q-. q-.]) |
    <c f>-.[( <c f af>-.) q-.( q-.]) |
    <c f bf>-.[( q-. q-. q-.] |
    <c g' bf>8-. q-.) <c e g>-. <c e>( |
    \clef bass f,8-.) f'[( bf, df] |
    c8) c,-.[( c-. c-.]) |
    r8 f-.[( f-.]) \clef treble <bf' df>-.-\slurShapeL \( |
    
    \barNumberCheck 73
    q8->[( <af c>-.) q-.]\) \clef bass f,(~ |
    f8[ f-. f-.]) \clef treble <bf' df>-.\( |
    q8->[( <af c>-.) q-.]\) q( |
    bf8) g( c) af( |
    df8) bf( e) c( |
    f8) df( g) e( |
    af8) f( bf) g( |
    c8) \clef bass c,,[ c c]( |
    
    \barNumberCheck 81
    f8) c[( df af] |
    bf8[ f e f] |
    c-.) <bf bf'>[( <c af'>) <c g'>-.] |
    f'8[( c df af] |
    bf8[ f e f] |
    c-.) <bf bf'>[( <c af'>) <c g'>-.] |
    f8-. f'4->(_\> e8\! |
    f8) bf,[( c c,] |
    
    \barNumberCheck 89
    f,8-.) f'4->(_\mf_\> e8\! |
    f8) bf,[(_\p c c,] |
    f4) r |
    <f f'>4 r |
    \alternative {
      { q4 r | }
      { q4 r | }
    }
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override Hairpin.to-barline = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \grace { s16\mf } s4 s\p |
    s2 |
    s16\> s\! s\> s\!  s\> s\! s\> s\! |
    s4 s\pp |
    s4\mf s\p |
    s2 * 2 |
    s4. s8-\tweak Y-offset 1.5 \mf |
    
    \barNumberCheck 9
    s2 |
    s4\> s8\! s\p |
    s2 |
    s4\> s16\! s8\< s16\! |
    s8.\> s16\! s4 |
    s2 |
    s8.\< s16\! s8.\> s16\! |
    s4..\< s16\! |
    
    \barNumberCheck 17
    s4..\> s16\! |
    s2\p |
    s2 |
    s4 s8.-\tweak Y-offset 1 \> s16\! |
    s2\pp |
    s2 * 3 |
    
    \barNumberCheck 25
    s4^\pocoRit s16 s8.\cresc |
    s2 * 3 |
    s4\mf s16 s8.\dim |
    s2 |
    s2\p |
    s2 |
    
    \barNumberCheck 33
    s8 s4.\p |
    s2 * 2 |
    s2\p |
    s2 |
    \alternative {
      { s2 | }
      { s4 s16 s8.\p | }
    }
  }
  \repeat volta 2 {
    s2 |
    
    \barNumberCheck 41
    s2 * 8 |
    
    \barNumberCheck 49
    s2 |
    s4..\< s16\! |
    s4.\> s8\p |
    s2 |
    s4\> s\! |
    s2 |
    s8\> s8\! s16 s8\p\< s16\! |
    s8.\> s16\! s4 |
    
    \barNumberCheck 57
    s2 |
    s2-\tweak Y-offset -1 \< |
    s4.. s16\! |
    s2\p |
    s2 |
    s16 s8\< s16\! s8.\> s16\! |
    s2\pp |
    s2 |
    
    \barNumberCheck 65
    s16 s8\< s16\! s8.\> s16\! |
    s16 s8\< s16\! s8.\> s16\! |
    s16 s8\< s16\! s8.\> s16\! |
    s16 s8\< s16\! s4 |
    s2 * 4 |
    
    \barNumberCheck 73
    s4\> s\! |
    s2 |
    s4\> s\! |
    s2\cresc |
    s2 * 3 |
    s2\f |
    
    \barNumberCheck 81
    s16 s4..\p |
    s2 |
    s16 s8\< s16\! s8.\> s16\! |
    s2-\tweak Y-offset 1 \pp |
    s2 |
    s16 s8\< s16\! s8.\> s16\! |
    s2\mf |
    s2 |
    
    \barNumberCheck 89
    s16 s4..\p |
    s2 |
    s16 s4..\p |
    s16 s4..^\pocoRit |
    \alternative {
      { s4 s\p^\aTempo | }
      { s2 | }
    }
  }
}

pedal = {
  \repeat volta 2 {
    \grace { s16 } s2 * 3 |
    s8 s\sustainOn s4\sustainOff |
    s2 * 4 |
    
    \barNumberCheck 9
    s8 s4.\sustainOn |
    s8\sustainOff s4\sustainOn s8\sustainOff |
    s2\sustainOn |
    s8\sustainOff s4\sustainOn s8\sustainOff |
    s2 * 4 |
    
    \barNumberCheck 17
    s2 * 3 |
    s8 s4.\sustainOn |
    s2\sustainOff |
    s2 * 3 |
    
    \barNumberCheck 25
    s2 * 8 |
    
    \barNumberCheck 33
    s2 * 3 |
    s4 s\sustainOn |
    s2 |
    \alternative {
      { s2\sustainOff | }
      { 
        % Fake a \sustainOff because it doesn't match with any \sustainOn
        \tag layout { 
          s2-\tweak extra-offset #'(-0.5 . 2) _\markup \musicglyph "pedal.*" 
        }
        \tag midi { s8\sustainOn s4.\sustainOff } | 
      }
    }
  }
  \repeat volta 2 {
    s2 |
    
    \barNumberCheck 41
    s2 * 8 |
    
    \barNumberCheck 49
    s2 * 2 |
    s8 s4.\sustainOn |
    s8\sustainOff s4.\sustainOn |
    s8\sustainOff s4\sustainOn s8-\tweak Y-offset -1 \sustainOff |
    s8 s4.-\tweak Y-offset -1 \sustainOn |
    s8\sustainOff s4\sustainOn s8\sustainOff |
    s2 |
    
    \barNumberCheck 57
    s2 * 8 |
    
    \barNumberCheck 65
    s2 |
    s8 s4.\sustainOn |
    s2\sustainOff\sustainOn |
    s2\sustainOff\sustainOn |
    s4.\sustainOff-\tweak Y-offset -2 \sustainOn s8\sustainOff |
    s2 |
    s4 s\sustainOn |
    s8\sustainOff s4.\sustainOn |
    
    \barNumberCheck 73
    s8\sustainOff s4\sustainOn s8\sustainOff |
    s8 s4.\sustainOn |
    s8\sustainOff s4\sustainOn s8\sustainOff |
    s2 * 5 |
    
    \barNumberCheck 81
    s2 * 8 |
    
    \barNumberCheck 89
    s2 * 2 |
    s4 s\sustainOn |
    s2\sustainOn |
    \alternative {
      { s2\sustainOff | }
      { 
        % Fake a \sustainOff because it doesn't match with any \sustainOn
        \tag layout { 
          s2-\tweak extra-offset #'(-0.5 . 2) _\markup \musicglyph "pedal.*" 
        }
        \tag midi { s8\sustainOn s4.\sustainOff } | 
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Andante" 4 = 84
    \grace { s16 } s2 * 24
    
    \barNumberCheck 25
    \set Score.tempoHideNote = ##t
    \tempo 4 = 76 s4 \tempo 4 = 84 s |
    s2 * 7 |
    
    \barNumberCheck 33
    s2 * 5 |
    \alternative {
      { s2 | }
      { s2 | }
    }
  }
  \repeat volta 2 {
    s2 |
    
    \barNumberCheck 41
    s2 * 48
    
    \barNumberCheck 89
    s2 * 3 |
    \tempo 4 = 76 s4 \tempo 4 = 69 s |
    \alternative {
      { \tempo 4 = 63 s4 \tempo 4 = 84 s | }
      { \tempo 4 = 60 s2 | }
    }
  }
}

forceBreaks = {
  % page 1
  \grace { s16 } s2 * 4 \break
  \grace { s16 } s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \pageBreak
  
  % page 2
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  \grace { s16 } s2 * 4 \break
  s2 * 4 \pageBreak
  
  % page 3
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \pageBreak
  
  % page 4
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 3 \break
  s2 * 3 \break
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
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
