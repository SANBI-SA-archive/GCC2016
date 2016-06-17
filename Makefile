

CTBE_POSTER=tmp/COMBAT_TB_EXPLORER
NEO4J_POSTER=tmp/Neo4j_GIE_0

all: $(CTBE_POSTER).pdf $(CTBE_POSTER).jpg $(NEO4J_POSTER).pdf $(NEO4J_POSTER).jpg

%.png: %.svg
	inkscape -e $@ $<

%.jpg: %.png
	convert -resize 1024 $< $@

%.pdf: %.svg
	inkscape -A $@ $<
