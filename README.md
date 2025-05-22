# Descrição
Repositório criado para estudo do Rspec utilizado em projetos feitos com Ruby on Rails

## Comandos
- `fixtures`:  são dados de teste pré-definidos, geralmente escritos em arquivos YAML, usados para popular o banco de dados durante a execução de testes automatizados.
- `factory_bot`: é uma `gem` que permite que você defina fábricas (factories) para criar instâncias de modelos do ActiveRecord com dados padrão.
- `sequences`: é um recurso do `factory_bot` que cria valores incrementais e únicos automaticamente, evitando conflitos com validações de unicidade no banco de dados
- `httpparty`: é uma biblioteca utilizada para facilitar o envio de requisições HTTP e o recebimento das respostas.
- `webmock`: é usado para stubbing e definição de expectativas em solicitações HTTP em testes.
- `vcr`: é usado para gravar requisições HTTP evitando a chamada repetitiva as APIs.

## Capybara
Ajuda a garantir que toda a  aplicação funcione corretamente em conjunto. Ele simula como um usuário real interagiria com sua aplicação em um navegador, permitindo que você escreva testes que clicam em links, preenchem formulários e verificam o conteúdo da página.
