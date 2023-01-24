# Pull base image.
FROM openjdk

ADD /var/lib/jenkins/workspace/Gradle_pipejob/build/libs/hello_world-0.0.1-SNAPSHOT.jar spring-mvc-example.jar

EXPOSE 8080

CMD java -jar spring-mvc-example.jar
