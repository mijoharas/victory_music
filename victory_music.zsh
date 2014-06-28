#!/usr/bin/zsh
FILES=(~/scripts/Victory_music/*.mp3)
#echo $FILES
cvlc --play-and-exit $FILES[$RANDOM%$#FILES+1] &
export DISPLAY=:0
xdg-open orangutan.gif
