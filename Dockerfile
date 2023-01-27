FROM openjdk:11-jre-slim

EXPOSE 8084

RUN mkdir /app

COPY build/libs/${JAR_FILE} /app/spring-boot-application.jar/

# COPY build/libs/*.jar /app/spring-boot-application.jar/

CMD java -jar /app/spring-boot-application.jar/
