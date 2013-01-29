#!/bin/sh
# Source: http://unix.stackexchange.com/a/44385/312

# $1 = video.ogv
# $2 = image.gif

mplayer -ao null $1 -vo jpeg:outdir=output
convert output/* $2
convert $2 -fuzz 10% -layers Optimize optimised.gif
