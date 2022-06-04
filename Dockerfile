FROM maven:3.8.4-openjdk-8-slim AS build
RUN mkdir /app
COPY . /cal
WORKDIR /app
RUN mvn clean package
FROM tomcat:9.0-jdk-openjdk
COPY --from=build /cal/target/LoginWebApp.war /usr/local/tomcat/webapp/javards.war
