# Use a lightweight OpenJDK base image
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the built JAR to the container
COPY target/*.jar app.jar

# Expose the port the Spring Boot app runs on
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
