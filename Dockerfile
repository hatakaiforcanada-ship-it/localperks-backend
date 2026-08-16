FROM maven:3.9-eclipse-temurin-8 AS build
WORKDIR /workspace
COPY pom.xml .
RUN mvn -B dependency:go-offline
COPY src ./src
RUN mvn -B clean package -DskipTests

FROM eclipse-temurin:8-jre
WORKDIR /app
COPY --from=build /workspace/target/localperks-backend-0.0.1-SNAPSHOT.jar app.jar
RUN mkdir -p /app/data/images
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
