FROM centos:latest
LABEL maintainer="Elnur Alverdiyev"


RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum update -y \
&& yum upgrade -y \
&& yum install -y \
    git \
    vim

RUN adduser -m gitusr
RUN mkdir -p /home/gitusr/gitrep \
&& chown -R gitusr:gitusr /home/gitusr/gitrep
RUN touch /home/gitusr/finished.txt \
&& echo "installation completed!" $(date) > /home/gitusr/finished.txt