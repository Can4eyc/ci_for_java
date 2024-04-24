FROM mdsol/java17-jdk:latest
WORKDIR /back
COPY . .
RUN ./mvnw clean package
CMD ["java", "-jar", "./target/simplecrud-0.0.1-SNAPSHOT.jar", "--server.port=8181"]
