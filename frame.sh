#!/bin/bash

camera_name='Camera'
camera_ip='0.0.0.0'
camera_username='admin'
camera_password='topsecret'
camera_stream_path='/'
time=`date '+%Y-%m-%d-%H-%M-%S'`;
directory="/home/kyle/timelapse/$camera_name/frames"
mkdir -p $directory
file_path="$directory/$time.jpg"
ffmpeg -rtsp_transport tcp -i rtsp://$camera_username:$camera_password@$camera_ip:554$camera_stream_path -ss 00:00:01.50 -vframes 1 $file_path -nostats -hide_banner -v 0 -loglevel quiet
