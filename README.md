# go-api

Desenvolvi uma API RESTful Go (Golang), focada em escalabilidade e performance.
A aplicação utiliza uma Arquitetura em Camadas (Clean Architecture) e é totalmente containerizada com Docker, garantindo um ambiente de produção consistente.

🚀 Tecnologias Utilizadas

    Linguagem: GoLang.

    Web Framework: Gin Gonic para roteamento de alta performance e manipulação de middleware.

    Banco de Dados: PostgreSQL para persistência de dados relacional.

    Containerização: Uso de Docker para o gerenciamento de serviços através de containers.

🏗️ Arquitetura do Projeto

O projeto foi construído seguindo princípios de responsabilidade única, facilitando testes e manutenção:

    Controller: Responsável pela interface de entrada (HTTP), validação de parâmetros e resposta ao cliente.

    UseCase: Camada central onde reside a lógica de negócio da aplicação.

    Repository: Camada de infraestrutura que abstrai a comunicação com o PostgreSQL.

    Model: Definições de estruturas de dados e resposta.

🛠️ Funcionalidades

A API fornece os seguintes endpoints para gerenciamento de produtos:

    GET /products: Lista todos os produtos cadastrados no banco de dados.

    GET /product/:productId: Busca os detalhes de um produto específico através de seu ID, incluindo validações de tipo de dado.

    POST /product: Criação de novos produtos com validação de payload JSON.

🐳 Como Executar com Docker

    Certifique-se de ter o Docker instalado e o Docker Desktop rodando.

    1. Subir o Banco de Dados primeiro
    docker-compose up -d go_db
    
    2. Subir a API
    docker-compose up -d go-app
    

    A API estará disponível em: `http://localhost:8000`
