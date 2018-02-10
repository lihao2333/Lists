#!/bin/sh
#draw a picture
#draw a grid
step=100;xMax=1080;yMax=1440;
convert -size ${xMax}x${yMax} xc:lightblue demo.jpeg
convert -fill black -draw "$(for n in $(seq 0 100 ${xMax});do echo line $n,0 $n,${yMax}; done)" demo.jpeg demo1.jpeg
convert -fill black -draw "$(for n in $(seq 0 100 ${yMax});do echo line 0,$n ${xMax},$n; done)" demo1.jpeg demo1.jpeg
eog demo1.jpeg

