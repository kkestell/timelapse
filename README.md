# Timelapse

## Dependencies

```
kyle@duat:~ $ sudo apt install ffmpeg
```

## Crontab

```
kyle@duat:~ $ crontab -e
```

```
* * * * * /home/kyle/frame.sh
0 0 * * * /home/kyle/video.sh
```

## Storage

### NFS

`/etc/fstab`

```
nas.lan:/Photos/Timelapse /home/kyle/timelapse nfs vers=3,rw,bg,soft,intr,nosuid 0 0
```