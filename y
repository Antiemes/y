#!/bin/bash

function pl
{
#  mpv -ytdl-format=bestaudio "$(ytifl "$1")"
  url="$(youtube-dl -f bestaudio -g "ytsearch1:$1")"
  mpv "$url"
}

if [ $# -eq 0 ]
  then
    while read title
      do
        pl "$title"
      done
   else
     pl "$*"
   fi
