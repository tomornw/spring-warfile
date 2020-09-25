#Dockerfile
FROM maven:3.6.3-jdk-8
LABEL maintainer="tomornw@mitrphol.com"

# copy the source tree and the pom.xml to our new container
COPY ./ ./
 
# package our application code
RUN mvn clean package

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["java","-jar","app.jar"]
