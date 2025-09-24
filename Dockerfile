# Stage 1: Build the WAR using Maven
FROM maven:3.8-openjdk-11 AS builder

WORKDIR /app

# Copy Maven configuration and WebContent
COPY pom.xml .
COPY WebContent ./WebContent

# Download dependencies
RUN mvn dependency:go-offline -B

# Copy project source and build
COPY src ./src
RUN mvn clean package -DskipTests -B

# Stage 2: Run with webapp-runner
FROM openjdk:11-jre-slim

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the built WAR file and webapp-runner
COPY --from=builder /app/target/*.war ./app.war
COPY --from=builder /app/target/dependency/webapp-runner.jar ./webapp-runner.jar

# Expose port 8080
EXPOSE 8080

# Define build arguments
ARG DATABASE_HOST
ARG DBUSER
ARG DBPASS

# Set environment variables from build args
ENV DATABASE_HOST=${DATABASE_HOST}
ENV DBUSER=${DBUSER}
ENV DBPASS=${DBPASS}

# Start the application
CMD ["java", "-jar", "webapp-runner.jar", "--port", "8080", "app.war"]
