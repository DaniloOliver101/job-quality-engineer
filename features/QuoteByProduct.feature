# #language: pt
# Funcionalidade: Api de Cotação de Frete por Produto
#     Para que seja possível cobrir todos os cenários da API 
#     Devo conseguir fazer as requisições pelos parametros que eu irei passar
#     Contexto: 
#         Esquema do Cenário: 
#         Dado que o body recebe os parametros <origin_zip_code> , <destination_zip_code>, <channel> e <sku_id>
#         Quando o <request> é realizado
#         Então a api deve me retornar <response> e os <days> e <opt_delivery>
#         Exemplos:
#         |request            |origin_zip_code |destination_zip_code|channel|sku_id  |response |days|opt_delivery   |
#         |"/quote_by_product"|"29010120"      |"29010120"          |"CN1"  |"SKU123"|400      |20  |"Correios PAC" |
#         |"/quote_by_product"|"29010120"      |"29010120"          |"CN2"  |"SKU123"|200      |4  |"Correios PAC" |
#         |"/quote_by_product"|"77001054"      |"29010120"          |"CN123"|"SKU123"|400      |0  |"Correios PAC" |
#         |"/quote_by_product"|"29010120"      |"22710010"          |"CN123"|"SKU456"|200      |6  |"Correios PAC" |
#         |"/quote_by_product"|"29010120"      |"22710990"          |"CN123"|"SKU456"|200      |6  |"Correios PAC" |
#         |"/quote_by_product"|"77001054"      |"66013070"          |"CN123"|"SKU456"|200      |20 |"Correios PAC" |

#     Cenário:  Erro ao Criar Cotação - Sales Channel Inválido
#         Quando o Sales Channl for igual a "CN1" ou "CN2"
#         Então o response deve ser igual "400"
#     Cenário: 
        