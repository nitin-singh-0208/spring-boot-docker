docker stop spring-boot-docker;
docker rm spring-boot-docker;
docker rmi spring-boot-docker:0.0.1-SNAPSHOT;
./mvnw clean;
./mvnw spring-boot:build-image;
docker run --name spring-boot-docker -d -p 8080:8080 spring-boot-docker:0.0.1-SNAPSHOT;
