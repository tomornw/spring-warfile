#Dockerfile
FROM tomcat:9.0.35-jdk8-openjdk
LABEL maintainer="tomornw@mitrphol.com"

ENV DIR_WEBAPP /usr/local/tomcat/webapps/
RUN  rm -rf $DIR_WEBAPP/*
ADD target/*.war $DIR_WEBAPP/ROOT.war

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8080
CMD ["catalina.sh", "run"]
