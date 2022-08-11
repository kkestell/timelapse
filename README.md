# Timelapse

## Dependencies

### Raspberry Pi OS

```
$ sudo apt install ffmpeg
```

## Crontab

```
* * * * * /home/kyle/timelapse.sh
```

## Storage

### NFS

#### `/etc/fstab`

```
nas.lan:/Photos /home/kyle/timelapse nfs vers=3,rw,bg,soft,intr,nosuid 0 0