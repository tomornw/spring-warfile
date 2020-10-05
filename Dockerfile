#Dockerfile
#FROM maven:3.6.3-jdk-8
FROM openjdk:8-alpine
LABEL maintainer="tomornw@mitrphol.com"

# copy the source tree and the pom.xml to our new container
COPY ./ ./
 
# package our application code
#RUN mvn clean package

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["java","-jar","target/app.jar"]
