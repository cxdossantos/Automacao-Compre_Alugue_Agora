class User
    attr_accessor :nome, :email, :senha, :tp_user
    
    # constructor
    def initialize(tp_user)
        if (tp_user == 'Corretor')
            self.nome = 'Aline Corretora'
            self.email = 'aline.guitti@mirumagency.com'
            self.senha = '1234567'
        elsif(tp_user == 'Comum')
            self.nome = 'Roberto Oliveira'
            self.email = 'roberto.oliveira@mirumagency.com'
            self.senha = '1234567'
        else
            puts 'Deu Ruim'
        end 
    end
end