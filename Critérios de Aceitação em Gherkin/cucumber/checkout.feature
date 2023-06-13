
Funcionalidade: Tela de cadastro
Como cliente dda EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto: 
Dado eu entrar na tela de cadastro checkout na plataforma EBAC-SHOP

Cenário: Deve ser cadastrado com todos os dados obrigatrios, marado co asterisicos
Quando eu for finalizar o checkout, prenchendo todos os campos vazios em *
Então deve exibir a mensagem "Checkout completo, já pode finalizar a compra."

Cenário: Não de permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Quando eu inserir um e-mail inválido
Então deve exibir uma mensagem de erro "E-mail inválido, tente novamente."

Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
Quando eu tentar cadastrar com campos vazios
Então deve exibir uma mensagem de alerta "Por favor, prencher seus dados em campos obrigatórios."
