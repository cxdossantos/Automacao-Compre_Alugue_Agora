require_relative '../classes/user'
require_relative '../classes/imovel'

Dado("eu seja um seja um Corretor Logado") do
  ### ACESSAR HOME PAGE ###
  visit 'http://localhost:3000'
    
  ### ACESSO PAGINA CADASTRO/LOGIN ###
  click_link('Entrar')
  click_link('Login')

  ### FAZENDO LOGIN CORRETOR
  @corretor = User.new('Corretor')

  find('form[id=formLogin] input[type=email]').set @corretor.email
  find('form[id=formLogin] input[type=password]').set @corretor.senha
  find('form[id=formLogin] button[type=submit]').click

end
  
Dado("esteja na Home do Corretor") do
  #VERIFICA PÁGINA CORRETO LOGADO
  expect(page).to have_content @corretor.nome
  #-----> AJUSTAR VALIDAÇÃO PARA FORMA CORRETA
end
  
Quando("seleciono a opção para criar anúncio") do
  click_link('Criar anúncio')
end
Quando("possuo anúncios disponiveis") do
  #-----> AJUSTAR VALIDAÇÃO PARA FORMA CORRETA
  puts 'POSSUI ANÚNCIO DISPONIVEL'
end
  
Então("é apresentado o formulário de Criar anúncio") do
  titulo = find('h1[class=form-header__title]')
  expect(titulo).to have_content 'Criar anúncio'
end

  Então("a mensagem") do |mensagem|
  expect(page).to have_content mensagem
  sleep 5
  end

  Quando("seleciono a opção {string}") do |tp_negocio|
    find('button', text: tp_negocio).click
  end
  
  Então("o Formulário de {string} é apresentado corretamente") do |tp_negocio|
    @imovel = Imovel.new()
    
    # Armazenando valores do formulário na classe 
    @imovel.tipoImovel = find('select[name=tipoImovel]')
    #imovel.tipoImovel.find('optgroup[label=Residencial] option', text: 'Studio').select_option

    @imovel.condicaoImovel = find('select[name=idStatusObra]')
    @imovel.descricaoImovel = find('textarea[name=descricao]')

    #Descobrir como Padronizar Imgens
    #attach_file('Anexar Imagens', 'C:/myprojects/caa/features/step_definitions/1.jpg')


    @imovel.cep = find('input[name=cep]')
    @imovel.rua = find('input[name=endereco]')
    @imovel.bairro = find('input[name=bairro]')
    @imovel.cidade = find('input[name=cidade]')
    @imovel.estado = find('input[name=estado]')
    @imovel.numero = find('input[name=numero]')
    @imovel.complemento = find('input[name=complemento]')

    #-----> AJUSTAR VALIDAÇÃO PARA FORMA CORRETA
    @imovel.divulgaEndereco = find(:xpath, '//*[@id="root"]/section/section/div/div[2]/div/div/div/fieldset[2]/div[2]/div/ul/li[1]/span/label')
    @imovel.valor = find('input[name=valorImovel]')

    #-----> AJUSTAR VALIDAÇÃO PARA FORMA CORRETA
    @imovel.aceitaImovel = find(:xpath, '//*[@id="root"]/section/section/div/div[2]/div/div/div/div/div/fieldset/div[4]/div/div/div[2]/span/label')
  end

  Dado("que inicie o preenchimento do Formulário e selecione o campo droplist Tipo Imóvel") do
    #@imovel.tipoImovel.find('optgroup[label=Residencial] option', text: 'Apartamento').select_option
    @imovel.tipoImovel.all('option').sample.select_option
    sleep 4
    @tp_imovel =  @imovel.tipoImovel.value.to_i
  end
  
  Então("o formulário deve ser atualizando apresentando as caracteristicas de resumo do {string} selecionado") do |string|
    puts 'Valida o Imóvel'
    puts @tp_imovel
    if(@tp_imovel == 32)
      puts 'IF'
      @imovel.qtdDormitorios = find('div[class="input-radio is-valid"]', text: 'Dormitórios')
      @imovel.qtdBanheiros = find('div[class="input-radio is-valid"]', text: 'Banheiros')  
      @imovel.qtdSuites = find('div[class="input-radio is-valid"]', text: 'Suítes')   
    elsif(@tp_imovel ==  23 || @tp_imovel ==  22)
      puts 'Elseif 1'
      puts @tp_imovel
      @imovel.qtdBanheiros = find('div[class="input-radio is-valid"]', text: 'Banheiros')
    elsif(@tp_imovel == 18 || @tp_imovel == 19)
      puts 'Elsif 2'
      @imovel.qtdBanheiros = find('div[class="input-radio is-valid"]', text: 'Banheiros')
      @imovel.qtdVagas = find('div[class="input-radio is-valid"]', text: 'Vagas')
    elsif(@tp_imovel == 27)
      puts 'Elsif 3'
      @imovel.qtdBanheiros = find('div[class="input-radio is-valid"]', text: 'Banheiros')  
      @imovel.qtdSuites = find('div[class="input-radio is-valid"]', text: 'Suítes')
      @imovel.qtdVagas = find('div[class="input-radio is-valid"]', text: 'Vagas')
    elsif(@tp_imovel == 9 || @tp_imovel == 11 || @tp_imovel == 13 || @tp_imovel == 16 || @tp_imovel == 21 || @tp_imovel == 28 || @tp_imovel == 29 || @tp_imovel == 33 || @tp_imovel == 34 || @tp_imovel == 41)
      puts 'Elsif 4'
      puts 'Nao habilita radio'
      sleep 5
    elsif(@tp_imovel == 1 || @tp_imovel == 2 || @tp_imovel == 3 || @tp_imovel == 4 || @tp_imovel == 5 || @tp_imovel == 6 || @tp_imovel == 7 || @tp_imovel == 8 || @tp_imovel == 10 || @tp_imovel == 12 || @tp_imovel == 17 || @tp_imovel == 20 || @tp_imovel == 24 || @tp_imovel == 25 || @tp_imovel == 26 || @tp_imovel == 31|| @tp_imovel == 37 || @tp_imovel == 38 || @tp_imovel == 39 || @tp_imovel == 40)
      puts 'Elsif 5'
      @imovel.qtdDormitorios = find('div[class="input-radio is-valid"]', text: 'Dormitórios')
      @imovel.qtdBanheiros = find('div[class="input-radio is-valid"]', text: 'Banheiros')  
      @imovel.qtdSuites = find('div[class="input-radio is-valid"]', text: 'Suítes')
      @imovel.qtdVagas = find('div[class="input-radio is-valid"]', text: 'Vagas')
      puts 'IFEEEE'
    else
      puts 'Nenhum selecionada'
    end
  end
  