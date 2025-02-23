FROM maven:3.8.4-openjdk-8-slim AS build
RUN mkdir /cal
WORKDIR /cal
COPY . /cal
RUN mvn clean package
FROM tomcat:9.0
COPY --from=build /cal/target/LoginWebApp.war /usr/local/tomcat/webapps/javards.war
