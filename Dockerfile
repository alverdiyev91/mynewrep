FROM tomcat:8.5.16-jre8-alpine

LABEL maintainer="Elnur Alverdiyev"

#what to run when container is running
CMD ["catalina.sh", "run"]