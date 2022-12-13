#!/bin/bash
# -----------------------------------------------------------------------------
# minecraft /start.sh script
# -----------------------------------------------------------------------------

#if jar file doesn't exist then download it
if [ ! -f /srv/server.jar ]
then
    wget "https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar" -O /srv/server.jar
fi
#if not find eula.txt file then echo eula=true to the file below and in that case start server(the last line)
if [ ! -f /srv/eula.txt ]
then
    echo "eula=true" > /srv/eula.txt
fi

cd /srv/ && java -Xms1024M -Xmx1024M -jar server.jar nogui