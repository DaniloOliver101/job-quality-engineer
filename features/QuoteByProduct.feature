#language: pt
Funcionalidade: Api de Cotação de Frete por Produto
    Para que seja possível cobrir todos os cenários da API 
    Devo conseguir fazer as requisições pelos parametros que eu irei passar
    Contexto: Criação de Cotação por Produto
        Esquema do Cenário: Tentativa de criar Cotação
            Quando o cep de Origem é <o_zip_code>
            E o cep destino é <d_zip_code> 
            E o canal de vendas <channel>
            E o sku <sku_id>
            Entao ao fazer o <request> com os dados passados
            Entao a API retorna os dados <code> , <days> e o <opt_delivery>
            Exemplos:
        |request            |o_zip_code|d_zip_code|channel|sku_id  |code|days|opt_delivery |
        |"/quote_by_product"|"29010120"|"29010120"|"CN1"  |"SKU123"|400 |0 |"Correios PAC" |
        |"/quote_by_product"|"29010120"|"29010120"|"CN2"  |"SKU123"|400 |0 |"Correios PAC" |
        |"/quote_by_product"|"77001054"|"29010120"|"CN123"|"SKU123"|400 |0 |"Correios PAC" |
        |"/quote_by_product"|"77001054"|"77001054"|"CN123"|"SKU456"|200 |2 |"Correios PAC"|
        |"/quote_by_product"|"29010120"|"22710010"|"CN123"|"SKU456"|200 |6  |"Correios PAC"|
        |"/quote_by_product"|"29010120"|"22710990"|"CN123"|"SKU456"|200 |6  |"Correios PAC"|
        |"/quote_by_product"|"29010120"|"66013070"|"CN3"|"SKU456"|200 |20 |"Correios PAC"|
