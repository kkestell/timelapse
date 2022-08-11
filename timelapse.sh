#!/bin/bash

camera_name='Nursery'
camera_ip='10.0.0.173'
camera_username='admin'
camera_password='jxi2s-4kzpP-2hzyB'
time=`date '+%Y-%m-%d-%H-%M-%S'`;
directory="/home/kyle/timelapse/$camera_name/frames"
mkdir -p $directory
file_path="$directory/$time.jpg"
ffmpeg -rtsp_transport tcp -i rtsp://$camera_username:$camera_password@$camera_ip:554/ -ss 00:00:01.50 -vframes 1 $file_path -nostats -hide_banner -v 0 -loglevel quiet
