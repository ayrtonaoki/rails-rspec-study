## Sobre / About
**(PT-BR)**
Repositório criado para estudo do Rspec utilizado em projetos feitos com Ruby on Rails

**(EN)**
Repository created for studying RSpec used in projects built with Ruby on Rails

![image](https://github.com/user-attachments/assets/379e36f9-ed60-4db1-81ce-81d2b828cf1f)

## Requisitos / Requirements
- Ruby 3.1.2
- Rails 7.2.2
- Rspec 3.13.3

## Primeiros Passos / Getting Started
**(PT-BR)**
- Clone o repositório: `git@github.com:ayrtonaoki/rails-rspec-study.git`
- Entre na pasta do projeto: `cd rails-rspec-study`
- Executar `rspec` para rodar todos os testes ou `rspec spec/#{folder}/#{file}_spec.rb:#{line_number}` para rodadr um teste específico

**(EN)**
- Clone the repository: `git@github.com:ayrtonaoki/rails-rspec-study.git`
- Enter the project folder: `cd rails-rspec-study`
- Run `rspec` to execute all tests or `rspec spec/#{folder}/#{file}_spec.rb:#{line_number}` to run a specific test

## Comandos / Commands
**(PT-BR)**
- `fixtures`:  são dados de teste pré-definidos, geralmente escritos em arquivos YAML, usados para popular o banco de dados durante a execução de testes automatizados.
- `factory_bot`: é uma `gem` que permite que você defina fábricas (factories) para criar instâncias de modelos do ActiveRecord com dados padrão.
- `sequences`: é um recurso do `factory_bot` que cria valores incrementais e únicos automaticamente, evitando conflitos com validações de unicidade no banco de dados
- `httpparty`: é uma biblioteca utilizada para facilitar o envio de requisições HTTP e o recebimento das respostas.
- `webmock`: é usado para stubbing e definição de expectativas em solicitações HTTP em testes.
- `vcr`: é usado para gravar requisições HTTP evitando a chamada repetitiva as APIs.

  **(EN)**
- `fixtures`: predefined test data, usually written in YAML files, used to populate the database during automated test runs.
- `factory_bot`: a gem that allows you to define factories to create instances of ActiveRecord models with default data.
- `sequences`: a feature of factory_bot that automatically generates incremental and unique values, avoiding conflicts with uniqueness validations in the database.
- `httpparty`: a library used to simplify sending HTTP requests and receiving responses.
- `webmock`: used for stubbing and setting expectations on HTTP requests in tests.
- `vcr`: used to record HTTP requests to avoid repeated calls to external APIs.

## Capybara
**(PT-BR)**
#### Ajuda a garantir que toda a  aplicação funcione corretamente em conjunto. Ele simula como um usuário real interagiria com sua aplicação em um navegador, permitindo que você escreva testes que clicam em links, preenchem formulários e verificam o conteúdo da página.

**(EN)**
#### Helps ensure the entire application works correctly together. It simulates how a real user would interact with your app in a browser, allowing you to write tests that click links, fill out forms, and verify page content.
