#!/bin/bash

function pl
{
  mpv -ytdl-format=bestaudio "$(ytifl "$1")"
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
