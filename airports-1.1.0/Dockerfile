FROM ubuntu:xenial

EXPOSE 8080

RUN apt-get update

RUN apt-get install openjdk-8-jre -y

COPY airports-assembly-1.1.0.jar .

CMD ["java", "-jar", "airports-assembly-1.1.0.jar"]
