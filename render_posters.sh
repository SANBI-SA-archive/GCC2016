#!/bin/bash

POSTERDIR=posters

for poster in $(ls $POSTERDIR/*.svg) ; do
  PNG=$(echo $poster | sed 's/.svg$/.png/')
  inkscape -e $PNG $poster
  JPG=$(echo $poster | sed 's/.svg$/.jpg/')
  convert -resize 1024 $PNG $JPG
  PDF=$(echo $poster | sed 's/.svg$/.pdf/')
  inkscape -A $PDF $poster
done
