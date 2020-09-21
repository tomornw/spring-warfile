#Dockerfile
FROM openjdk:8-jdk-alpine
LABEL maintainer="tomornw@mitrphol.com"

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["java","-jar","/app.jar"]