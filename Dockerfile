# Estágio de Build
FROM openjdk:17-jdk AS build

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y maven
RUN mvn clean install

# Estágio de Execução
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /app/target/todolist-1.0.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]