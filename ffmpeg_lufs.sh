#!/bin/bash

echo "input file to scan"
read INPUT
echo "what is the target loudness?"
read TARGET

ffmpeg -nostats -i "$INPUT" -filter_complex ebur128=peak=true:target=$TARGET -f null

