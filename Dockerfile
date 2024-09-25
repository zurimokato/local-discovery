FROM ubuntu:latest
LABEL authors="noj23"
FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} eureka-discovery.jar
ENTRYPOINT ["java", "-jar","/eureka-discovery.jar"]