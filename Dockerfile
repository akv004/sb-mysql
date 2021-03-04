#### Stage 1: Build the application
FROM openjdk:12-jdk-alpine as build
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
#EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]