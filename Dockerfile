# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file (replace "your-app.jar" with your actual JAR file name)
COPY target/Calculator-0.0.1-SNAPSHOT.jar /app/ROOT.jar

# Run the Java application
ENTRYPOINT ["java", "-jar", "/app/ROOT.jar"]
