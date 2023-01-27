FROM openjdk:11-jre-slim

EXPOSE 8084

RUN mkdir /app

COPY build/libs/*.jar /app/spring-boot-application.jar/

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/spring-boot-application.jar"]
