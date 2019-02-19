class Imovel
    attr_accessor :tipoImovel, :condicaoImovel, :qtdDormitorios, :qtdBanheiros, :qtdSuites, :qtdVagas, :areaUtil, :areaTotal, :descricaoImovel, :imagens,
    :caracteristicasImovel, :areaComum, :cep, :estado, :cidade, :bairro, :rua, :numero, :complemento, :divulgaEndereco, :valor, :aceitaImovel
  
    # constructor
    def initialize()
      self.tipoImovel = tipoImovel
      self.condicaoImovel = condicaoImovel
      self.descricaoImovel = descricaoImovel
      self.imagens = imagens
      self.cep = cep
      self.estado = estado
      self.cidade = cidade
      self.bairro = bairro
      self.rua = rua
      self.numero = numero
      self.complemento = complemento
      self.divulgaEndereco = divulgaEndereco
      self.valor = valor
      self.aceitaImovel = aceitaImovel
    end
end
  
class VenderPermutar < Imovel
    attr_accessor :aceitaImovel, :estadoAceita, :cidadeAceita,
    :bairroAceita, :tipoImovelAceita, :valorImovelAceita, :aceitaMesmoValor, :aceitaMenorValor, :aceitaMaiorValor, :descricaoAceita
     # constructor
     def initialize()
        self.aceitaImovel = aceitaImovel
        self.estadoAceita = estadoAceita
        self.cidadeAceita = cidadeAceita
        self.bairroAceita = bairroAceita
        self.tipoImovelAceita = tipoImovelAceita
        self.valorImovelAceita = valorImovelAceita
        self.aceitaMesmoValor = aceitaMesmoValor
        self.aceitaMenorValor = aceitaMenorValor
        self.aceitaMaiorValor = aceitaMaiorValor
        self.descricaoAceita = descricaoAceita
      end
end

class Alugar < Imovel
    attr_accessor :iptuIncluso, :condominioIncluso 
    def initialize()
      self.iptuIncluso = iptuIncluso
      self.condominioIncluso = condominioIncluso
    end
end
  
  