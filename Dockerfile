FROM openjdk:12-jdk

WORKDIR /app
COPY pom.xml .
COPY src src

ENTRYPOINT ["java", "-jar", "/app/target/dependency/webapp-runner.jar", "--port", "8080", "target/*.war"]
EXPOSE 8080
