
Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto, e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu escolher um item na plataforma EBAC-SHOP

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu escolher a cor "Orange", o tamanho "XS", a quantidade "2"
Então deve aparecer o resultado do produto "Comprar"

Cenário: Deve permitir apenas 10 produtos por venda
Quando eu escolher a quantidade "13"
Então deve aparecer a mensagem "Quantidade indisponível, quantidade maxima de 10 itens por vez!"

Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
Quando eu escolher clicar em "limpar"
Então deve voltar ao estado original com uma mensagem "Informações limpadas com sucesso, já pode começar de novo."

Esquema do Cenário: Autentificar dados dos produtos
Quando eu escolher a cor <cor>, o tamanho <tamanho>, a quantidade <quantidade> ou clicar em <limpar>
Então deve aparecer a mensagem <mensagem>


Exemplos:
| cor      | tamanho | quantidade | limpar   | mensagem                                                           |
| "Orange" | "XS"    | "2"        | ""       | "Comprar"                                                          |
| "Red"    | "M"     | "13"       | ""       | "Quantidade indisponível, quantidadde maxima de 10 itens por vez!" |
| "Blue"   | "S"     | "5"        | "limpar" | "Informações limpadas com sucesso, já pode começar de novo."       |
            
