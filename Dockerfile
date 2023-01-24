# Pull base image.
FROM openjdk
COPY . /

ADD ar spring-mvc-example

EXPOSE 8080

CMD java -jar sprin
