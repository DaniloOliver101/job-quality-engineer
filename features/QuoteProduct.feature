# #language: pt
# Funcionalidade: Api de Cotação de Frete por Produto
#     Para que seja possível cobrir todos os cenários da API 
#     Devo conseguir fazer as requisições pelos parametros que eu irei passar
#     Contexto: 
#         Dado que eu acesso a api "/quote_by_product"
#         Cenário:  Erro ao Criar Cotação - Sales Channel Inválido
#             Quando o Sales Channl for igual a "CN1" ou "CN2"
#             Então o response deve ser igual a "400"
#         Cenário: Erro ao criar cotação - Origem e destino invalido
#             Quando o Cep de Origem é "77001054" 
#             E o cep Destino é "29010120"
#             Então o response deve ser igual a "400"
#     Cenário: Quote criada com sucesso - Sem Opção de Canal Correios Pac
#         Quando o canal de vendas é "CN123"
#         E o Cep de        

        