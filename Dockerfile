# Estágio de Build
FROM mcr.microsoft.com/windows/servercore AS build

WORKDIR C:\app

# Copie o código-fonte para o contêiner
COPY . .

# Instale o Java Development Kit (JDK)
# Certifique-se de que os binários do JDK estejam disponíveis no diretório 'bin' do seu aplicativo
COPY jdk-17.0.1 C:\jdk

# Instale o Apache Maven
# Certifique-se de que o Maven esteja configurado corretamente no diretório raiz do seu aplicativo
COPY apache-maven-3.8.4 C:\maven

# Compile o código-fonte com Maven
RUN C:\maven\bin\mvn clean install



# Estágio de Execução
FROM mcr.microsoft.com/windows/servercore:latest

WORKDIR C:\app

# Copie o JAR compilado do estágio de build
COPY --from=build C:\app\target\todolist-1.0.0.jar app.jar

EXPOSE 8080

# Comando para iniciar o aplicativo
ENTRYPOINT ["java", "-jar", "app.jar"]
