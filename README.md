Pré requisitos para EXECUTAR O Projeto 
1 - Ter o ambiente do ruby instalado
OBS: para instalação do ruby, seguir os passos no arquivo RUBYInstaller.md 
#Após a instalação 
Abrir o terminal dentro do projeto e executar os seguintes comandos

$ Gem install bundler
$ Bundle install 
$ rspec

Ruby com as seguintes Gems
Cucumber 
Httparty
Rspec 
#Motivações 
Codificar em Ruby é menos verboso que em outras linguagems, com o cucumber, é possivel gerar partes do código que são usadas como base para automação com o rspec é possivel codificar o suficiente para trazer resultados satisfatórios


## Instruções

Você deverá criar um fork deste projeto, e desenvolver em cima do seu fork. Use o `README` principal do seu repositório para nos contar como foi resolver seu teste,
As decisões tomadas
Como você organizou e separou seus testes



## O desafio

Você será o responsável pelo desenvolvimento dos testes automatizados da nossa API de cotação a fim de cobrir alguns requisitos da `Loja Intelipost` (loja fictícia), temos uma documentação publica (https://docs.intelipost.com.br/v1/cotacao) para que voce consiga entender como vai realizar as requisições. Use esta documentação para ler sobre os parâmetros de entrada e saída, afinal serão importantíssimos para a validação dos seus testes. Nessa fase voce automatizará as cotações de frete por produto descritas no link https://docs.intelipost.com.br/v1/cotacao/criar-cotacao-por-produto .

Para as requisições que você for fazer na API, utilize a api key **4aa90b1087807b5fb8e52b01584f84e416ddb8ab8e5b800ae5d0f075a2d1e379**

 ## Para conhecimento

A `Loja Intelipost` possui diversos canais de vendas, recebendo milhares de cotações de frete em todo o País. Para garantir que o cliente receba sua encomenda rapidamente, a Loja Intelipost possui quatro endereços de origem:

| Origem | Estado | CEP |
| ------------- | ------------- | ------------- |
| Origem 1  | Espirito Santo  | 29010120 |
| Origem 2  | Tocantins  | 77001054 |
| Origem 3  | Mato Grosso  | 78005170 |
| Origem 4  | Rio Grande do Sul  | 94090720 |

## Cobertura dos testes

* A Loja Intelipost deixou de atuar nos canais de vendas **CN1** e **CN2**, portanto se houver uma requisição oriunda dos canais de vendas (_sales_channel_) **CN1** ou **CN2**, é esperado que não haja opções de entrega no resultado da cotação. ok
sales_channel | origin_zip_code | destination_zip_code

* A Loja Intelipost espera que não haja opções de entrega caso, na cotação de frete, o cep de origem seja de **Tocantins** e o cep de destino esteja localizado na **Região Sudeste** do País. ok

* O canal de vendas **CN123**, não deve disponibilizar a opção de entrega **Correios PAC** caso o cep de destino esteja entre as faixas de cep _22710010_ e _22710990_.

* Todas as cotações de frete, independente do canal de vendas, cujo o destino seja o estado do **Pará**, o prazo de entrega esperado é de 20 dias.

* Cotações cujo o SKU (identificador) do produto seja **SKU123** não deve disponibilizar a opção de entrega **Correios PAC**.

Com as informações acima, sua atividade será a criação de um conjunto de testes a fim de garantir que tais situações estão ocorrendo conforme o esperado.

### O que nós esperamos do seu teste:

* Possua um bom nível de cobertura
* Seja feito o uso de BDD
* Possua clareza na escrita dos testes
* Possua um report simples onde possamos entender as possíveis falhas ocorridas na execução dos testes
* Seja produzido em _Java_ (Java 8 de preferência)
* Possua informações para que possamos entender o que e como foi desenvolvido
* Possua informações de como executar os testes
* Será um diferencial se ao menos um dos seus testes for criado utilizando Jmeter
