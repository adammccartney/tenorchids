
default: all

all: score spatialLayout

score: tenorchids.ly
	@ lilypond tenorchids.ly

spatialLayout: img/spatialLayout.odg
	@ libreoffice --draw --headless --convert-to pdf img/spatialLayout.odg

clean:
	rm *.pdf

