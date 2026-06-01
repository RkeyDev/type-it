FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /workspace/app

COPY pom.xml .
COPY dependency-reduced-pom.xml .
COPY src ./src

RUN mvn -B -DskipTests package

FROM eclipse-temurin:17-jre

WORKDIR /app

COPY --from=build /workspace/app/target/type_it_backend-1.0-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

ENV PORT=8080

CMD ["java", "-jar", "app.jar"]
