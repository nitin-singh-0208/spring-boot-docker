#FROM openjdk:8
#COPY target/*.jar spring-boot-docker-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","spring-boot-docker-0.0.1-SNAPSHOT.jar"]
FROM maven:3.5.4-jdk-8
COPY . /project
RUN  cd /project && mvn package