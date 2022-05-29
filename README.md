Ten Orchids
===========

Ten Orchids is a piece for organ and electronics, composed in May 2022 for the
organ at Leechkirche, Graz. The score consists of two simple parts, essentially
a series of ten chords that are doubled on the synthesizer and on the organ. 


## Build the score and notes for electronics

```
git clone git@github.com:adammccartney/tenorchids.git
cd tenorchids
make
```

This will generate two pdf files: `tenorchids.pdf` and `spatialLayout.pdf`


### Clean

`make clean`

Will remove all pdf files in the top level directory.


# Get the release

In order to run a version of the project with, you'll need to download the
audio files which are available from the releases page.


## How to lay out the wav stems

The wav files are labled with `mmX.wav` where mm stands for muscal measure and
X is a variable containing an integer value representing the number of the
measure to which the particular sound file corresponds.

In order to lay out the tape part, simple organize the files in sequence
according to their measure numbers (1-10). This will correspond to bars 1-10 in
the score (tenOrchids.pdf).

The audio files are recorded as stereo files and can be played as such. There
is no spatial component within the stereo mix - i.e. it is basically a mono
audio source duplicated on both channels.
If a multichannel audio setup is present, it is suggested to spatialize the mix
by first creating duplicate channels. A new mix may be obtained by freely
mixing the sound sources. 

Importantly - the overall dynamics of the piece are notated in the score. Where
the score indicates silence, the tape parts should not sound.

## Notes on performace - (premiere at Leechkirche)

The initial performance of this piece will happen at Leechkirche, Graz on 31.
May 2022. The electronics setup contains a 6 loudspeaker array. If possible,
the following points should be applied:

1. A master dynamic should be automated on each audio stem (and should be
   audible on each track) the dynamics are indicated in the score. Essentially
   it means automating a slow crescendo to the middle of the clip, immediately
   followed by a decrescendo to the end.

2. The sound should be spatialized according to three stereo pairs. Please see
   the file `spatialLayout.pdf` for a visual discription of one possible
   layout. The specifics of the layout are not the most important aspect, more
   important is that the pairs can play a copy of the audio stems and are
   running filters according to the following specification: 
   * __pair A__ should run through a lowpass filter whose cutoff frequency is
     set to 220Hz
   * __pair B__ should runthrough a bandpass filter that passes the frequencies
     in the range 146.83Hz - 1318.15Hz
   * __pair C__ should run through a highpass filter whose cutoff frequeny is
     set to 880Hz


3. It should be possible to control each of the stereo pairs independently on
   mixing desk sliders.
