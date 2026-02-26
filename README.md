# go-api

Este projeto é uma API REST desenvolvida em Go (Golang), focada em escalabilidade e manutenibilidade.
A aplicação utiliza uma Arquitetura em Camadas (Clean Architecture) e é totalmente containerizada com Docker, garantindo um ambiente de desenvolvimento e produção consistente.

🚀 Tecnologias Utilizadas

    Linguagem: GoLang.

    Web Framework: Gin Gonic para roteamento de alta performance e manipulação de middleware.

    Banco de Dados: PostgreSQL para persistência de dados relacional.

    Containerização: Docker e Docker Compose para orquestração da API e do banco de dados.

🏗️ Arquitetura do Projeto

O projeto foi construído seguindo princípios de responsabilidade única, facilitando testes e manutenção:

    Controller: Responsável pela interface de entrada (HTTP), validação de parâmetros e resposta ao cliente.

    UseCase: Camada central onde reside a lógica de negócio da aplicação.

    Repository: Camada de infraestrutura que abstrai a comunicação com o PostgreSQL.

    Model: Definições de estruturas de dados e contratos de resposta.

🛠️ Funcionalidades

A API fornece os seguintes endpoints para gerenciamento de produtos:

    GET /products: Lista todos os produtos cadastrados no banco de dados.

    GET /product/:productId: Busca os detalhes de um produto específico através de seu ID, incluindo validações de tipo de dado.

    POST /product: Criação de novos produtos com validação de payload JSON.

🐳 Como Executar com Docker

Para rodar o projeto localmente, você só precisa ter o Docker instalado. Execute os seguintes comandos na raiz do projeto:

# Build da imagem 
docker build -t go-api .

# Ambiente completo (API + PostgreSQL)
docker-compose up -d

(A API estará disponível em http://localhost:8000)
