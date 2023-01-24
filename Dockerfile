# Pull base image.
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

ADD /home/ubuntu/var/lib/jenkins/workspace/Gradle_pipejob/build/libs/ spring-mvc-example.jar

EXPOSE 8080

CMD java -jar spring-mvc-example.jar
