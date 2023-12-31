#!/bin/bash

docker pull maven
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install

docker build -t messenger .
docker run -p 6969:8080 messenger