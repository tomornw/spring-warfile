FROM tomcat:9

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV PACKAGE_FILE /usr/local/tomcat/webapps/
RUN  rm -rf $PACKAGE_FILE/*
ADD target/*.war $DIR_WEBAPP/ROOT.war

CMD ["catalina.sh", "run"]
