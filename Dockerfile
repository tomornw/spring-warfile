FROM tomcat:9

ENV DIR_WEBAPP /usr/local/tomcat/webapps/

RUN  rm -rf $DIR_WEBAPP/*

ADD target/*.war $DIR_WEBAPP/ROOT.war

CMD ["catalina.sh", "run"]
