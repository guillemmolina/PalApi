# Use an official Maven image with Java 17 as the base image
FROM maven:3.8.4-openjdk-17-slim AS build

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml and the project files to the container
COPY pom.xml .
COPY src ./src

# Build the application using Maven
RUN mvn clean package -DskipTests

# Use an official OpenJDK image with Java 17 as the base image
FROM adoptopenjdk:17-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the previous stage to the container
COPY --from=build /app/target/pal-api-0.0.1-SNAPSHOT.jar .

# Set the command to run the application
CMD ["java", "-jar", "pal-api-0.0.1-SNAPSHOT.jar"]