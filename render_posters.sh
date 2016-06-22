#!/bin/bash

POSTERDIR=posters

DPI=600
for poster in $(ls $POSTERDIR/*.svg) ; do
  PNG=$(echo $poster | sed 's/.svg$/.png/')
  inkscape -d $DPI -e $PNG $poster
  JPG=$(echo $poster | sed 's/.svg$/.jpg/')
  convert -resize 1024 $PNG $JPG
  PDF=$(echo $poster | sed 's/.svg$/.pdf/')
  inkscape -T -A $PDF $poster
done
