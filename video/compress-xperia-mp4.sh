#!/bin/sh
# $1 - input video
# $2 - output video
#
ffmpeg -i $1 -acodec mp2 -aspect 4:3 -r 29.9 $2