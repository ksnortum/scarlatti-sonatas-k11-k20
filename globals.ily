%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

#(set-global-staff-size 18)

\header { 
  composer = "Domenico Scarlatti (1685-1757)"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = \markup { 
    \center-column {
      "Copyright © 2025 Knute Snortum. This work is licensed under the" 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "Creative Commons Attribution-ShareAlike 4.0 International License."
    }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")

  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \override Slur.details.free-head-distance = 0.75
    \override PhrasingSlur.details.free-head-distance = 0.75
    \override Stem.details.beamed-lengths = #'(3.5 3.9)
  }
  \context {
    \Voice
    \override Tie.minimum-length = 2.5
  }
  % Helps keep dynamics from intersecting the span bar line.
  \context { 
    \Dynamics
    \consists Pure_from_neighbor_engraver
    \remove Bar_engraver
  }
}

\midi {
  % Dynamics are mostly in the staff, not the voice
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }        
  \context {
    \Score
    midiMinimumVolume = #0.01
    midiMaximumVolume = #0.99
  }
}


%
% Definitions
%

#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

% Usage: % #(ly:expect-warning-times 4 "omitting tuplet bracket")

parenLeft =
\once\override Parentheses.stencils =
#(grob-transformer 'stencils
                    (lambda (grob stils)
                      (list (first stils) empty-stencil)))

parenRight =
\once\override Parentheses.stencils =
#(grob-transformer 'stencils
                    (lambda (grob stils)
                      (list empty-stencil (second stils))))

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

voiceUp = {
  \change Staff = "upper"
  \voiceFour 
}
voiceDown = {
  \change Staff = "lower"
  \voiceThree 
}

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

beamEighthNotes.24 = {
  \set Staff.beamExceptions = \beamExceptions { 16[ 16 16 16] }
  \set Staff.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = 4,0
}

trillNatural = \markup \teeny \concat { " " \natural }
trillBelow = \tweak Script.script-priority -100 \etc
insideSlur = \tweak avoid-slur #'inside \etc

%
% Markup
%

md = \markup \large \italic m.d.
rit = \markup \large \italic rit.
stent = \markup \large \italic stent.
pocoRit = \markup \large \italic "poco rit."
rall = \markup \large \italic rall.
aTempo = \markup \large \italic "a tempo"
scherzando = \markup \large\italic scherzando
sfMarkup = \markup \dynamic sf
ppMarkup = \markup \dynamic pp
