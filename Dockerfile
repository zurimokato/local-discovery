FROM openjdk:17-jdk-slim
LABEL authors="noj2304"
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} eureka-discovery.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar","/eureka-discovery.jar"]