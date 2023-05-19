            #language:pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login <autenticação> na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a EBAC-SHOP

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "aline@ebacshop.com.br"
            E a senha "Aline@123"
            Então deve ser direcionado para tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "aline@ebac.com"
            E a senha "Aline@123"
            Então deve exibir uma mensagem de alerta "Usuário Inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "aline@ebac.com"
            E a senha aline0606
            Então deve exibir uma mensagem de alerta "Usuário ou Senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> correspondente
            Exemplos:

            | usuario | senha | mensagem |

            | "clara@ebac.com.br"     | "teste@123" | "Usuário Inexistente"        |
            | "aline@ebacshop.com.br" | "aline0606" | "Usuário ou Senha inválidos" |
            | "cristal@ebacshop"      | "aline0606" | "Usuário Inexistente"        |
