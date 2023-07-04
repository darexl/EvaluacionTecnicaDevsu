# Fetching latest version of Java
FROM openjdk:18
 
# Setting up work directory
WORKDIR /app

# Copy the jar file into our app
COPY ./target/demo-0.0.1.jar /app

# Exposing port 8080
EXPOSE 8000

# Starting the application
CMD ["java", "-jar", "demo-0.0.1.jar"]