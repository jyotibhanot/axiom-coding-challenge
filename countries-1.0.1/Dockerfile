FROM ubuntu:xenial

EXPOSE 8080

RUN apt-get update

RUN apt-get install openjdk-8-jre -y

COPY countries-assembly-1.0.1.jar .

CMD ["java", "-jar", "countries-assembly-1.0.1.jar"]
