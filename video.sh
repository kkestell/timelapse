#!/bin/bash

camera_name='Deck'
time=`date '+%Y-%m-%d-%H-%M-%S'`;
root_directory="/home/kyle/Pictures/Timelapse/$camera_name"
frames_directory="$root_directory/frames"
videos_directory="$root_directory/videos"
mkdir -p $videos_directory
file_path="$videos_directory/$time.mp4"
ffmpeg                                              \
    -framerate 30                                   \
    -pattern_type glob -i "$frames_directory/**/*.jpg" \
    -c:v libx264                                    \
    -pix_fmt yuv420p                                \
    $file_path
