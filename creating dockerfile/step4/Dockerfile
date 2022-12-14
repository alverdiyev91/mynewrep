FROM ubuntu:20.04

LABEL maintainer="Elnur Alverdiyev"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt upgrade -y && apt install openjdk-8-jre-headless wget -y && apt-get clean autoclean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /srv
#mount volume to /srv mount point
VOLUME /srv
#we say take start.sh file from the folder and inject it to container
ADD start.sh /start.sh
#getting sure that it is executable
RUN chmod +x /start.sh

#telling docker what port to use
EXPOSE 25565
#
ENTRYPOINT [ "/start.sh" ]