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

2. The electronics setup assume a hexaphonic loudspeaker array 
   * __speaker 1__ Lowpass filter, cutoff: 75 Hz
   * __speaker 2__ Lowpass filter, cutoff: 220Hz
   * __speaker 3__ bandpass filter, range 146.83Hz - 660Hz
   * __speaker 4__ bandpass filter, range 660Hz - 1318.15Hz
   * __speaker 5__ highpass cutoff @ 1660Hz
   * __speaker 6__ highpass cutoff @ 3200Hz


3. It should be possible to control each of the speakers independently on
   mixing desk sliders. The score indicates which speakers are in use at any
   given time.
