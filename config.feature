#language:pt

Funcionalidade: Escolha dos Produtos
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a EBAC-SHOP

Cenário: Configuração Válida
Quando eu escolher meu produto
E escolher a quantidade, tamanho e gosto
Então deve se adicionar o produto no carrinho

Cenário: Tamanho indisponível
Quando eu escolher meu produto
E não houver o tamanho que preciso
Então os botões devem ficam desabilitados para seleção

Cenário: Quantidade de Itens
Quando eu escolher meu produto
E não houver a quantidade que preciso
Então deve exibir a quantidade de itens disponíveis para compra

Cenário: Limitação de Itens
Quando eu escolher meus produtos
E selecionar mais que 10 itens
Então deve exibir uma mensagem de alerta "Quantidade de ítens excedida"

Cenário: Botão Limpar
Quando eu estiver no carrinho
E clicar no botão "Limpar"
Então deve se voltar ao estado original










