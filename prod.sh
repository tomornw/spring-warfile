#!/bin/bash
echo "welcome"
#
#spring
#
echo "spring"
echo "stop container and remove image"
docker container rm -f spring
docker image rm -f spring
#echo "Go to Folder Script File And Dockerfile"
#cd ~/mitrphol/spring-warfile/
echo "package"
mvn clean package
echo "build image from docker file"
docker build -t spring .
echo "run image to container"
docker run --restart=always --name spring -p 9999:9999 -d spring
echo "finish step"
