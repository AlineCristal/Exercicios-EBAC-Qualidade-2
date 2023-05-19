            #language:pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a EBAC-SHOP

            Cenário: Cadastro realizado
            Quando eu preencher os dados obrigatórios sinalizados por asterisco
            E informar um <email> válido
            Então deve exibir uma <<mensagem> "Cadastro realizado com sucesso"

            Cenário: Cadastro inválido
            Quando eu preencher os dados obrigatórios sinalizados por asterisco
            E não informar um <email> válido
            Então deve exibir uma <mensagem> de erro "Formato de e-mail inválido"

            Cenário: Campos em branco
            Quando eu não preencher os dados obrigatórios sinalizados por asterisco
            E informar um <email> válido
            Então deve exibir uma <mensagem> de alerta "Campos Obrigatórios*"

            | usuario                 | senha       | mensagem                         |
            | "clara@ebac"            | "teste@123" | "Formato de e-mail inválido"     |
            | "aline@ebacshop.com.br" | "aline0606" | "Cadastro realizado com sucesso" |
            | "cristal@eba.com"       | "aline0606" | "Formato de e-mail inválido"     |


