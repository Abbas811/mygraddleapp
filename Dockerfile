FROM openjdk:11-jre-slim

RUN mkdir /app

COPY build/libs/hello_world-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

CMD java -jar /app/app.jar

