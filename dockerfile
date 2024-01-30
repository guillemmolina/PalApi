# Use a base image of OpenJDK 17 with HotSpot
FROM maven:3.8.4-openjdk-17 AS build

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file of your application into the container
COPY pom.xml .
COPY src ./src
RUN mvn clean install
# Expose the port on which your Spring Boot application listens
FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /app/target/pal-api-0.0.1-SNAPSHOT.jar ./pal-api.jar
# Command to run the application
ENTRYPOINT ["java", "-jar", "pal-api.jar"]