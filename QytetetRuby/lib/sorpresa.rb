#encoding: utf-8 

module ModeloQytetet

class Sorpresa
  
  attr_accessor :texto
  attr_accessor :valor
  attr_accessor :tipo
  
  def initialize(texto, valor, tipo)
    @texto=texto
    @valor=valor
    @tipo=tipo    
  end
  
  def to_s()
    " \n Texto: #{@texto} \n Valor: #{@valor} \n Tipo: #{@tipo}"
  end

end

end
