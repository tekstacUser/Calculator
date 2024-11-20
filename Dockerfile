# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file (replace "calculator.jar" with the renamed file if necessary)
COPY target/calculator.jar /app/ROOT.jar

# Run the Java application
ENTRYPOINT ["java", "-jar", "/app/ROOT.jar"]
