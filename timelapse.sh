#!/bin/bash

name='nursery'
ip='10.0.0.173'
username='admin'
password='jxi2s-4kzpP-2hzyB'
storage=$name

time=`date '+%Y-%m-%d-%H-%M-%S'`;
filename="timelapse/$storage/$time.jpg"
mkdir -p $storage
ffmpeg -rtsp_transport tcp -i rtsp://$username:$password@$ip:554/ -ss 00:00:01.50 -vframes 1 $filename -nostats -hide_banner -v 0 -loglevel quiet
