# scarlatti-sonatas-k11-k20

[LilyPond](https://lilypond.org/) engraving source files used to create Scarlatti's Sonatas K11 through K20.

## Creating the PDF and MIDI files

(I highly recommend the [Frescobaldi](https://github.com/frescobaldi/frescobaldi) IDE for LilyPond.  It makes all of the following much easier.)

PDF and MIDI files can be created by compiling an `ly` file with LilyPond, that is, for instance, issuing the following command (assuming you have `lilypond` in your PATH variable):

        lilypond sonata-k11.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click sonata-k11.ly

You may also [download the latest release](https://github.com/ksnortum/scarlatti-sonatas-k11-k20/releases/latest) to get the compiled PDF and MIDI files.

### Two-sided printing

The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding.  If you don't want this, open the file `global.ily`, find the `\paper` block (near the top) and set `two-sided = ##f`.

### Warnings

In `sonata-k19.ly` I suppressed several warnings that are caused by a bug in the `articulate.ly` file.  If your piece starts with a grace note, you will get spurious warnings about bar-checks failing.  I also suppressed a warning telling you that it can't steal time backwards from the start of the piece.  If the `articulate.ly` file changes in future versions and these warning change in verbiage or frequency, you will get a warning that LilyPond didn't encounter a warning!  In that case, change or remove the lines starting with `#(ly:expect-warning` at the top of the `sonata-k19.ly` file.

## Thanks

Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org) for all the help getting LilyPond to do what I wanted.

## License

<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-SA 4.0 <img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>

If you use this work, please attribute it to Knute Snortum ([https://github.com/ksnortum/](https://github.com/ksnortum/)).
