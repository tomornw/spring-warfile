FROM tomcat:9

ENV DIR_WEBAPP /usr/local/tomcat/webapps/

RUN  rm -rf $DIR_WEBAPP/*

ADD target/*.jar $DIR_WEBAPP/ROOT.war

CMD ["catalina.sh", "run"]
