
Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que eu escolher um item na plataforma EBAC-SHOP

    Scenario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
        When eu escolher a cor "Orange"
        And o tamanho "XS"
        And a quantidade "2"
        Then deve aparecer o resultado do produto "Comprar"

    Scenario: Deve permitir apenas 10 produtos por venda
        When eu escolher a quantidade "13"
        Then deve aparecer a mensagem "Quantidade indisponível, quantidade maxima de 10 itens por vez!"

    Scenario: Quando eu clicar no botão "limpar" deve voltar ao estado original
        When eu escolher clicar em "limpar"
        Then deve voltar ao estado original com uma mensagem "Informações limpadas com sucesso, já pode começar de novo."

    Scenario Outline: Autentificar dados dos produtos
        When eu escolher a cor <cor>
        And o tamanho <tamanho>
        And a quantidade <quantidade>
        And clicar em <limpar>
        Then deve aparecer a mensagem <mensagem>


        Examples:
            | cor      | tamanho | quantidade | limpar   | mensagem                                                           |
            | "Orange" | "XS"    | "2"        | ""       | "Comprar"                                                          |
            | "Red"    | "M"     | "13"       | ""       | "Quantidade indisponível, quantidadde maxima de 10 itens por vez!" |
            | "Blue"   | "S"     | "5"        | "limpar" | "Informações limpadas com sucesso, já pode começar de novo."       |
            
