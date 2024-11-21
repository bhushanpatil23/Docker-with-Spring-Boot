FROM maven:3-eclipse-temurin-22-alpine

# Set the working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY ./target/product-service-0.0.1-SNAPSHOT.jar product-service.jar

EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "product-service.jar"]
