
Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autentificação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que eu for fazer o login na plataforma EBAC-SHOP

    Scenario: Ao inserir dados válidos deve ser direcionado para a tela de checkout
        When inserir os dados de usuário "ismaelqa32@ebac.com"
        And a senha "OiProfessor;D"
        Then exibir a mensagen "Usuário e senha válidos" indo para o checkout

    Scenario: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
        When inserir os dados de usuário "ismaelqa30@ebac.com"
        And a senha "EaeProfessor:P"
        Then exibir a mensagem "Usuário ou senha inválidos"

    Scenario Outline: Autentificar dados do login
        When inserir os dados de usuário <usuario>
        And a senha <senha>
        Then exibir a mensagem <mensagem>

        Examples:
            | usuario               | senha             | mensagem                     |
            | "ismaelqa32@ebac.com" | "OiProfessor;D"   | "Usuário e senha válidos"    |
            | "ismaelqa30@ebac.com" | "EaeProfessor:P " | "Usuário ou senha inválidos" |
            | "ismaelqa32@ebac.com" | "EaeProfessor:P " | "Usuário ou senha inválidos" |
            | "ismaelqa30@ebac.com" | "OiProfessor;D"   | "Usuário ou senha inválidos" |