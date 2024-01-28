# Usa una imagen base de Java
FROM adoptopenjdk:17-jre-hotspot

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR de tu aplicación al contenedor
COPY target/pal-api-0.0.1-SNAPSHOT.jar /app

# Expone el puerto en el que tu aplicación Spring Boot escucha
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot cuando se inicia el contenedor
CMD ["java", "-jar", "pal-api-0.0.1-SNAPSHOT.jar"]