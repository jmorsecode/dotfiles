#!/bin/bash

path=/var/tmp

scrot $path/shot.png
convert $path/shot.png -blur 0x07 $path/shot-blurred.png
#convert -size 1920x1080 xc:transparent -font Courier-bold -pointsize 15 -fill Gray -draw "text 30,1045 'AUTHORIZED PERSONNEL ONLY'" $path/watermark.png
convert -size 1920x1080 xc:transparent -font Courier-bold -pointsize 30 -fill black -draw "text 800,540 'AUTHORIZED PERSONNEL ONLY'" $path/watermark.png
composite -dissolve 80% -quality 100 $path/watermark.png $path/shot-blurred.png $path/joined.png
#convert $path/joined.png -colorspace Gray $path/final.png
i3lock -i $path/joined.png
rm $path/shot-blurred.png $path/joined.png 
