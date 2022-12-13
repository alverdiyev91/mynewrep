#!/bin/bash
# -----------------------------------------------------------------------------
# minecraft /start.sh script
# -----------------------------------------------------------------------------


#if not find eula.txt file then echo eula=true to the file below and in that case start server(the last line)
if [ ! -f /srv/eula.txt ]
then
    echo "eula=true" > /srv/eula.txt
fi

cd /srv/ && java -Xms1024M -Xmx1024M -jar server.jar nogui