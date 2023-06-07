
Feature: Tela de cadastro
Como cliente dda EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Background: 
Given eu entrar na tela de cadastro checkout na plataforma EBAC-SHOP

Scenario: Deve ser cadastrado com todos os dados obrigatrios, marado co asterisicos
When eu for finalizar o checkout
And prencher todos os campos vazios em *
Then deve exibir a mensagem "Checkout completo, já pode finalizar a compra."

Scenario: Não de permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
When eu inserir um e-mail inválido
Then deve exibir uma mensagem de erro "E-mail inválido, tente novamente."

Scenario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
When eu tentar cadastrar com campos vazios
Then deve exibir uma mensagem de alerta "Por favor, prencher seus dados em campos obrigatórios."
