# BackEnd TODO List

Este é um projeto de uma API de lista de tarefas construída em Java com o uso do framework Spring Boot. A API oferece funcionalidades para criar, listar, atualizar e excluir tarefas em uma lista de tarefas.

## Tecnologias Utilizadas

- Java 17
- Spring Boot
- Maven
- Lombok
- H2 Database
- Render

## Configuração do Projeto

1. Clone este repositório:
   ```bash
   git clone https://github.com/EverttonGomes/todolist_BackEnd
   ```

2. Navegue até o diretório do projeto:
   ```bash
   cd todolist_BackEnd
   ```

3. Certifique-se de ter o Java 17 instalado em sua máquina. Se não estiver instalado, você pode fazê-lo com o seguinte comando:
   ```bash
   sudo apt install openjdk-17-jdk
   ```

4. Execute o projeto usando o Maven:
   ```bash
   mvn spring-boot:run
   ```

A API estará disponível em `http://localhost:8080` por padrão, mas você pode configurar a porta no arquivo `application.properties` se desejar.

## Uso da API

A API oferece as seguintes funcionalidades:

- **Listar Tarefas**: Use `GET /tasks` para recuperar a lista de todas as tarefas.
- **Criar Tarefa**: Use `POST /tasks` para criar uma nova tarefa.
- **Criar Usuário**: Use `POST /users` para criar um novo usuário.
- **Atualizar Tarefa**: Use `PUT /tasks/{id}` para atualizar uma tarefa existente.

Para acessar os endpoints protegidos, é necessário autenticar-se com seu token.
