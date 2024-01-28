# Utiliza la imagen de OpenJDK 11 como base
FROM openjdk:17-oracle

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR construido en el directorio target de tu proyecto
COPY target/pal-api-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que tu aplicación Spring Boot está escuchando
EXPOSE 8089

# Comando para ejecutar la aplicación al iniciar el contenedor
CMD ["java", "-jar", "app.jar"]