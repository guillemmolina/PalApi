# Use a base image of OpenJDK 17 with HotSpot
FROM openjdk:17-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file of your application into the container
COPY target/pal-api-0.0.1-SNAPSHOT.jar /app

# Expose the port on which your Spring Boot application listens
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "pal-api-0.0.1-SNAPSHOT.jar"]