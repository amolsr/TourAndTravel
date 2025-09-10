# Stage 1: Build the WAR using Maven
FROM maven:3.9-jdk17 AS builder

WORKDIR /app

# Copy Maven configuration
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline -B

# Copy project source and build
COPY src ./src
RUN mvn package -DskipTests -B

# Stage 2: Run with Tomcat
FROM tomcat:9.0-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy built WAR as ROOT.war
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat on container run
CMD ["catalina.sh", "run"]
