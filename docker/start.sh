#!/bin/bash

mkdir -p /data/steam/palworld /home/palworld/.steam/sdk64
chown -R palworld /data/steam/palworld /home/palworld/.steam/sdk64
sudo -u palworld /usr/games/steamcmd +force_install_dir /data/steam/palworld/ +login anonymous +app_update 2394010 validate +quit
sudo -u palworld ln -nfs /data/steam/palworld/linux64/steamclient.so /home/palworld/.steam/sdk64/steamclient.so
cd /data/steam/palworld/
sudo -u palworld ./PalServer.sh $SERVER_ARGS