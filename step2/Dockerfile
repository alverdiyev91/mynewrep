#identicate source container image
FROM ubuntu:20.04
#identicate maintainer name
LABEL maintainer="Elnur Alverdiyev"
# we are telling ubuntu that when updating take default and continue without interactive mode
ENV DEBIAN_FRONTEND noninteractive   

# we're merge all run commands together not to create layer for all of run commands and we delete all the packages at the end of line
#RUN command creates layer each time for each line of it
RUN apt update -y && apt upgrade -y && apt install openjdk-8-jre-headless wget -y && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*
#using -o parameter instead of cd command and indicate where to install the file
RUN mkdir -p /srv && wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar -O /srv/server.jar

RUN cd /srv && java -Xms1024M -Xmx1024M -jar server.jar nogui