FROM ubuntu:20.04

LABEL maintainer="Elnur Alverdiyev" \
    name="mynewrep" \
    version="1.0"


ENV DEBIAN_FRONTEND noninteractive

#install packages
RUN apt update -y \
&& apt upgrade -y \
&& apt install -y \
    openjdk-8-jre-headless \
    wget \
&& apt-get clean autoclean \
&& apt-get autoremove -y \
&& rm -rf /var/lib/apt/lists/*

#here we're creating user with home directory /srv
RUN useradd -m -d /srv minecraft
#we're making user just created to has rights on this directory 
RUN mkdir -p /srv && chown -R minecraft:minecraft /srv
#mount volume to /srv mount point
VOLUME /srv
#we say take start.sh file from the folder and inject it to container
ADD start.sh /start.sh
#getting sure that it is executable (slso by user minecraft)
RUN chmod +x /start.sh && chown minecraft:minecraft /start.sh

#telling docker what port to use
EXPOSE 25565

#we want to executw start.sh with minecraft user
USER minecraft
ENTRYPOINT [ "/start.sh" ]