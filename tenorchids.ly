\version "2.22.0"
\language "english"

placeholderMu = {r1 * 6}

%%
%% Timing
%%

"t1" = ^\markup{ \large { \bold { "0'45\"" } }}
"t2" = ^\markup{ \large { \bold { "1'20\"" } }}
"t3" = ^\markup{ \large { \bold { "2'00\"" } }}
"t4" = ^\markup{ \large { \bold { "2'52\"" } }}
"t5" = ^\markup{ \large { \bold { "3'45\"" } }}
"t6" = ^\markup{ \large { \bold { "4'45\"" } }}
"t7" = ^\markup{ \large { \bold { "5'27\"" } }}
"t8" = ^\markup{ \large { \bold { "6'09\"" } }}
"t9" = ^\markup{ \large { \bold { "6'59\"" } }}
"t10" = ^\markup{ \large { \bold { "7'41\"" } }}

%% Dynamics & notes

glissInstruct = ^\markup{ "glissando by slowly inflating & deflating bellows" }
melInstruct = ^\markup{ "allow for dynamics of the bellows" }

%%%%%%%%%%%%
%%% Synth
%%%%%%%%%%%%

"sy1right" = { r1*2\< <e'' g'' a''>1:32\arpeggio\fermata\> r1*2\!\"t1" }
"sy2right" = { r1*2\< <e'' g'' a''>1:32\arpeggio\fermata\> r1*2\!\"t2" }
"sy3right" = { r1*2\< <ef'' gf'' a''>1:32\arpeggio\fermata\> r1*2\!\"t3" }
"sy4right" = { r1*2\< <ef'' gf'' a''>1:32\arpeggio\fermata\> r1*2\!\"t4" }
"sy5right" = { r1*2\< <df'' f'' a''>1:32\arpeggio\fermata\> r1*2\!\"t5" }
"sy6right" = { r1*2\< <df'' f'' a''>1:32\arpeggio\fermata\> r1*2\!\"t6" }
"sy7right" = { r1*2\< <df'' gf'' bf''>1:32\arpeggio\fermata\> r1*2\!\"t7" }
"sy8right" = { r1*2\< <df'' gf'' bf''>1:32\arpeggio\fermata\> r1*2\!\"t8" }
"sy9right" = { r1*2\< <df'' gf'' bf''>1:32\arpeggio\fermata\> r1*2\!\"t9" }
"sy10right" = { r1*2\< <df'' gf'' bf''>1:32\arpeggio\fermata\> r1*2\!\"t10" }

syRightMus = {
  \"sy1right" 
  \break
  \"sy2right" 
  \break
  \"sy3right" 
  \break
  \"sy4right" 
  \break
  \"sy5right" 
  \break
  \"sy6right" 
  \break
  \"sy7right" 
  \break
  \"sy8right" 
  \break
  \"sy9right" 
  \break
  \"sy10right" 
  \break
}

"sy1left" = { r1*2\< c1:32\fermata\> r1*2\! }
"sy2left" = { r1*2\< d1:32\fermata\> r1*2\! }
"sy3left" = { r1*2\< ef1:32\fermata\> r1*2\! }
"sy4left" = { r1*2\< f1:32\fermata\> r1*2\! }
"sy5left" = { r1*2\< gf1:32\fermata\> r1*2\! }
"sy6left" = { r1*2\< a1:32\fermata\> r1*2\! }
"sy7left" = { r1*2\< bf1:32\fermata\> r1*2\! }
"sy8left" = { r1*2\< c'1:32\fermata\> r1*2\! }
"sy9left" = { r1*2\< df'1:32\fermata\> r1*2\! }
"sy10left" = { r1*2\< ef'1:32\fermata\> r1*2\! }

syLeftMus = {
  \"sy1left" 
  \break
  \"sy2left" 
  \break
  \"sy3left" 
  \break
  \"sy4left" 
  \break
  \"sy5left" 
  \break
  \"sy6left" 
  \break
  \"sy7left" 
  \break
  \"sy8left" 
  \break
  \"sy9left" 
  \break
  \"sy10left" 
  \break
}



%%%%%%%%%%%%
%%% Organ
%%%%%%%%%%%%

melody = { bf''4 a''2 g''2. fs''1 ~ fs''4 ef''\breve d''1 ~ d''4 c''2. bf'2 a'4 g'4 }

%% rest frames
% [33, 38, 9, 27]
cRight = { r1 * 5
           \break
           r1\melInstruct
           r1 * 2
           r4
           \melody
           r2 \break
           r1 * 8
           r2
           \melody
           r1 * 2
           r4
           \melody
           r1
           r1
           r4
           r1 * 4
           r1
         }

"c1left" = { r1*2\<\glissInstruct <e'' g'' a''>1\fermata\>\> r1*2\! }
"c2left" = { r1*2\< <e'' g'' a''>1\fermata\>\> r1*2\! }
"c3left" = { r1*2\< <ef'' gf'' a''>1\fermata\> r1*2\! }
"c4left" = { r1*2\< <ef'' gf'' a''>1\fermata\> r1*2\! }
"c5left" = { r1*2\< <df'' f'' a''>1\fermata\> r1*2\! }
"c6left" = { r1*2\< <df'' f'' a''>1\fermata\> r1*2\! }
"c7left" = { r1*2\< <df'' gf'' bf''>1\fermata\> r1*2\! }
"c8left" = { r1*2\< <df'' gf'' bf''>1\fermata\> r1*2\! }
"c9left" = { r1*2\< <df'' gf'' bf''>1\fermata\> r1*2\! }
"c10left" = { r1*2\< <df'' gf'' bf''>1\fermata\> r1*2\! }

leftMus = {
  \"c1left" 
  \break
  \"c2left" 
  \break
  \"c3left" 
  \break
  \"c4left" 
  \break
  \"c5left" 
  \break
  \"c6left" 
  \break
  \"c7left" 
  \break
  \"c8left" 
  \break
  \"c9left" 
  \break
  \"c10left" 
  \break
}

"c1ped" = { r1*2\< c1\fermata\> r1*2\! }
"c2ped" = { r1*2\< d1\fermata\> r1*2\! }
"c3ped" = { r1*2\< ef1\fermata\> r1*2\! }
"c4ped" = { r1*2\< f1\fermata\> r1*2\! }
"c5ped" = { r1*2\< gf1\fermata\> r1*2\! }
"c6ped" = { r1*2\< a1\fermata\> r1*2\! }
"c7ped" = { r1*2\< bf1\fermata\> r1*2\! }
"c8ped" = { r1*2\< c'1\fermata\> r1*2\! }
"c9ped" = { r1*2\< df'1\fermata\> r1*2\! }
"c10ped" = { r1*2\< ef'1\fermata\> r1*2\! }

pedMus = {
  \"c1ped" 
  \break
  \"c2ped" 
  \break
  \"c3ped" 
  \break
  \"c4ped" 
  \break
  \"c5ped" 
  \break
  \"c6ped" 
  \break
  \"c7ped" 
  \break
  \"c8ped" 
  \break
  \"c9ped" 
  \break
  \"c10ped" 
  \break
}

\paper {
      #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #3
  max-systems-per-page = #12
  system-system-spacing.padding = #15  %fit staves closer together
  system-system-spacing.stretchability = #15  %how flexible the spacing is


 myStaffSize = #20
  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          
                           (/ myStaffSize 20))) 
}
\layout{
  \override Hairpin.circled-tip = ##t
}
\book {
  \header {
    title = "ten orchids"

    composer = "Adam McCartney"
    opus = "May 2022"
    tagline = ""
  }


\score {
  <<
  \new PianoStaff = "synth"
  	 \with {
		instrumentName = #"Synth"
		shortInstrumentName = #"synth."
		midiInstrument = #"synthstrings 1"
		\override TimeSignature.transparent = ##t 
	  }     <<
          \context Staff = "upper" 
            \context Voice = AllOfOld_pno_right { 
              \key c \major 
              \accidentalStyle modern-cautionary 
              \syRightMus
            }
          \context Staff = "lower" 
            \context Voice = AllOfOld_pno_left  { 
              \key c \major 
              \accidentalStyle modern-cautionary  
               \transpose c c'
               \syLeftMus
            
            }
          >>
  \new StaffGroup = "organ"
  \with {
		instrumentName = #"Organ"
		shortInstrumentName = #"org."
		midiInstrument = #"organ"
		\override TimeSignature.transparent = ##t 
	  } <<
          \context Staff = "upper" 
            \context Voice = AllOfOld_pno_right { 
              \key c \major 
              \accidentalStyle modern-cautionary 
               \cRight
            }
          \context Staff = "lower" 
            \context Voice = AllOfOld_pno_left  { 
              \key c \major 
               
              \accidentalStyle modern-cautionary 
              \leftMus 
            }
             \context Staff = "pedal" 
           \context Voice = pedal { 
             \key c \major 
             \clef "bass" 
             \accidentalStyle modern-cautionary 
             \time 20/4
             \pedMus
           }
          >>
     
  >> %% Score
}

}
