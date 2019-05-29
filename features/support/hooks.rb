After do |scenario|
    # puts scenario.name
    
    nome_cenario = scenario.name.gsub(',', '')
    puts  nome_cenario.gsub(' ', '_').downcase!
    # puts nome_cenario   
end