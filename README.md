# Timelapse

Captures a frame from one or more RTSP streams.

## Dependencies

```
kyle@duat:~ $ sudo apt install ffmpeg
```

## Crontab

```
kyle@duat:~ $ crontab -e
```

```
* * * * * python /home/kyle/timelapse/frame.py
0 0 * * * /home/kyle/timelapse/video.sh
```

## Storage

### NFS

`/etc/fstab`

```
nas.lan:/Photos/Timelapse /home/kyle/timelapse/storage nfs vers=3,rw,bg,soft,intr,nosuid 0 0
```
