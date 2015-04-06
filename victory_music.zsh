#!/usr/bin/zsh
BASE_DIR=${0%/*}

MUSIC=($BASE_DIR/music/*.mp3)
GIFS=($BASE_DIR/gifs/*)

function randomArgument {
        emulate -RL zsh
        if [[ $# -eq 0 ]]; then return 0; fi
        local rr
        rr=$(( $RANDOM % $# + 1 ))
        echo $@[${rr}]
}

cvlc --play-and-exit $(randomArgument $MUSIC)&
export DISPLAY=:0
xdg-open $(randomArgument $GIFS)&


randomArgument $MUSIC
