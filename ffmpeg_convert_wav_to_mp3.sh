#!/bin/bash

for f in ./*.wav; do

ffmpeg -i $f -vn -ar 48000 -ac 2 -b:a 192k "$(basename "$f" .wav).mp3"
done
