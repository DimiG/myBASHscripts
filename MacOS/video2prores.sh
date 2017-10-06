#!/usr/bin/env bash
#
# Copyright (c) 2017 Dmitri G. All rights reserved.
#
# Batch converter for video files. Usable for editing systems ingest
# Developed for Mac OS BASH

# Variables Setup
# No variables HERE ;)

# Function Setup

function finished { tput setaf 3; echo -e "DONE! ;-)"; tput sgr0; exit 0; }

if [ -z "$1" ] || [ "$1" = "-h" ]; then
    # Display HELP
    tput setaf 3
    echo -e ""
    echo -e "            Converting video for Editing"
    echo -e "-----------------------------------------------------"
    echo -e "Run this script inside folder you wanna convert files"
    echo -e "With such commands:"
    echo -e ""
    echo -e "Usage: video2prores -h"
    echo -e "Usage: video2prores mp4"
    tput sgr0
    exit 0
else
    for file in *.$1; do
        [ -e "$file" ] || continue
        name=${file##*/}
        base=${name%.$1}
        echo "Processing $file file..."; echo "";
        nice ffmpeg -i "$file" -aspect 16:9 -c:v prores -c:a pcm_s16le -profile:v 0 "${base}_ProRes422.PROXY.mov"
    done
fi

# Just a greetings :)
finished
