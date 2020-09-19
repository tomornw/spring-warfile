FROM openjdk:8-jdk-alpine

ARG PACKAGE_FILE=target/*.jar
COPY ${PACKAGE_FILE} app.jar

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 80
ENTRYPOINT ["java","-jar","/app.jar"]
