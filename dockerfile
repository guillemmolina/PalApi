# Utiliza una imagen base de OpenJDK 17 con HotSpot
FROM openjdk:17-jre-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR de tu aplicación al contenedor
COPY target/pal-api-0.0.1-SNAPSHOT.jar /app

# Expone el puerto en el que tu aplicación Spring Boot escucha
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot cuando se inicia el contenedor
CMD ["java", "-jar", "pal-api-0.0.1-SNAPSHOT.jar"]