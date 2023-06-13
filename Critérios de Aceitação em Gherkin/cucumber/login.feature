
Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autentificação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu for fazer o login na plataforma EBAC-SHOP

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando inserir os dados de usuário "ismaelqa32@ebac.com" com a senha "OiProfessor;D"
Então exibir a mensagen "Usuário e senha válidos" indo para o checkout

Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
Quando inserir os dados de usuário "ismaelqa30@ebac.com" com a senha "EaeProfessor:P"
Então exibir a mensagem "Usuário ou senha inválidos"

Esquema do Cenário: Autentificar dados do login
Quando inserir os dados de usuário <usuario>, a senha <senha>
Então exibir a mensagem <mensagem>

Exemplos:
| usuario               | senha             | mensagem                     |
| "ismaelqa32@ebac.com" | "OiProfessor;D"   | "Usuário e senha válidos"    |
| "ismaelqa30@ebac.com" | "EaeProfessor:P " | "Usuário ou senha inválidos" |
| "ismaelqa32@ebac.com" | "EaeProfessor:P " | "Usuário ou senha inválidos" |
| "ismaelqa30@ebac.com" | "OiProfessor;D"   | "Usuário ou senha inválidos" |