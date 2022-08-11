import json
import os
import subprocess
from datetime import datetime
import pathlib

if __name__ == '__main__':
    f = open(os.path.join(pathlib.Path(__file__).parent.resolve(), 'config.json'))
    config = json.load(f)
    f.close()
    filename = f"{datetime.now().strftime('%Y-%m-%d-%H-%M-%S')}.jpg"
    for camera in config['cameras']:
        storage_path = os.path.join(os.path.join(config['storage_path'], camera["name"]), 'frames')
        if not os.path.exists(storage_path):
            os.makedirs(storage_path)
        file_path = os.path.join(storage_path, filename)
        print(f"Saving frame from {camera['name']} ({camera['ip']}) to {file_path}")
        subprocess.run([
            "ffmpeg",
            "-rtsp_transport",
            "tcp",
            "-i",
            f"rtsp://{camera['username']}:{camera['password']}@{camera['ip']}:554{camera['stream_path']}",
            "-ss",
            "00:00:01.50",
            "-vframes",
            "1",
            "-qscale:v",
            str(config["quality"]),
            file_path,
            '-nostats',
            '-hide_banner',
            '-v',
            '0',
            '-loglevel',
            'quiet'
        ])