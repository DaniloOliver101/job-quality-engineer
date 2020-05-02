#Para a execução do projeto

- Ter o Ruby Instalado: Arquivo RUBYInstaller.md
- Para executar, abrir um terminal dentro da pasta do projeto
- Instalar as Gems

   `$ gem install bundler`
  
  `$ gem install cucumber`
  
  `$ gem install rspec`
  
  `$ gem install httparty`

- 
Executar o bundle
  
  `$ bundle install`
- Executar o Cucumber
  
`$ cucumber --init`
 `$ cucumber`

  #Porquê escolhi Ruby para criação dos testes?

* É a linguagem de programação que identifico melhor facilidade para codificar testes
* É uma linguagem menos verbosa que as demais, ou seja, codifica-se menos para mais coisas.
* É de facil entendimento, quem já possui conhecimento de lógica de Programação, tem facilidade em aprender.
* Poucos arquivos são necessários no projeto para a execução ser feita com sucesso.
* O Relatório gerado, é claro e indica exatamente quais testes passaram e quais foram reprovados
* O Cucumber foi usado para criação dos cenários no estilo tabela, onde nela estão os dados que foram passados como parâmetro e os dados que devem ser retornados quando o teste for executado.

* Após a execução um relatório dentro da pasta log/features.html é gerado e atualizado
