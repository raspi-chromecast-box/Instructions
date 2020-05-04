# Manual Install Instructions

## 1.) Install Docker and Utility Functions via this Script
https://github.com/raspi-chromecast-box/Instructions/blob/master/Docker_Install.sh

## 2.) Start a Redis Docker Image
```
mkdir /home/$(whoami)/REDIS_PUBLIC
```
```
sudo chmod 777 /home/$(whoami)/REDIS_PUBLIC
```
```
sudo chown -R $(whoami):sudo /home/$(whoami)/REDIS_PUBLIC
```
```
sudo docker run -dit --restart='always' \
--name redis -p 6379:6379 \
-v /home/$(whoami)/REDIS_PUBLIC/:/data \
redis:latest
```
```
sudo apt-get install redis-tools
```

## 3.) Install Chromecast IP Watcher
https://github.com/raspi-chromecast-box/ChromecastIPWatcher

## 4.) Install Chromecast Data Watcher
https://github.com/raspi-chromecast-box/ChromecastDataWatcher

## 5.) Install USB Gamepad Watcher
https://github.com/raspi-chromecast-box/USBGamepadWatcher

## 6.) Install Spotify Browser Token Server
https://github.com/raspi-chromecast-box/spotify-browser-token-server

## 7.) Install Web C2 Server
https://github.com/raspi-chromecast-box/WebServer
