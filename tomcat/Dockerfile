FROM tomcat:8.0-alpine

LABEL maintainer="Elnur Alverdiyev"

ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8080

#what to run when container is running
CMD [“catalina.sh”, “run”]