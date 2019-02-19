#language: pt
Funcionalidade:  Anunciar Imóveis | Corretor Autônomo |

    #Esquema do Cenario: Corretor Logado | Criar Anúncio |
    Cenario: Corretor Logado | Criar Anúncio |
        # Fazer Login e apresentar o Formulário "Criar Anúncio"
        Dado eu seja um seja um Corretor Logado
        E esteja na Home do Corretor
        
        # Apresentar Formulário para Criar Anúncio
        Quando seleciono a opção para criar anúncio
        E possuo anúncios disponiveis
        Então é apresentado o formulário de Criar anúncio
        E a mensagem 
        """
        Você tem 4 anúncios e 0 destaques.
        """

        # Selecionando Tipo de Negócio e atualizando o Formulário
        Quando seleciono a opção "Vender"
        Então o Formulário de "Vender" é apresentado corretamente

        Dado que inicie o preenchimento do Formulário e selecione o campo droplist Tipo Imóvel
        Então o formulário deve ser atualizando apresentando as caracteristicas de resumo do "Tipo Imóvel" selecionado