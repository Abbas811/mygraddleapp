FROM gradle:4.7.0-jdk8-alpine 
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src

FROM openjdk:8-jre-slim

EXPOSE 8080

RUN mkdir /app

COPY  /var/lib/jenkins/workspace/Gradle_pipejob/build/libs/hello_world-0.0.1-SNAPSHOT-plain.jar /app/spring-boot-application.jar
 
ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/spring-boot-application.jar"]
