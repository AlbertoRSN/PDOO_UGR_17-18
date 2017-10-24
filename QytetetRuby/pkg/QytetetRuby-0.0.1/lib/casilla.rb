# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  
  class Casilla
    
    attr_accessor :numeroCasilla #int
    attr_accessor :coste #int
    attr_accessor :numHoteles #int
    attr_accessor :numCasas #int
    attr_accessor :tipo #TipoCasilla
    attr_accessor :titulo #TituloPropiedad
    
    private :titulo=
    
    def initialize(numeroCasilla, coste, tipo, titulo)
      @numeroCasilla = numeroCasilla
      @coste = coste
      @numHoteles = 0
      @numCasas = 0
      @tipo = tipo
      @titulo=titulo      
    end
  
    #CONSTRUCTORES CON OTRO NOMBRE
    def self.new_casilla(numeroCasilla, tipo)
      new(numeroCasilla,0,tipo,nil)
    end
    
    def self.new_casilla_impuesto(numeroCasilla, coste, tipo)
      new(numeroCasilla,coste,tipo,nil)
    end

    
    def to_s()
      if tipo == TipoCasilla::CALLE
        " \n Casilla{ \n    NumeroCasilla: #{@numeroCasilla} \n    Coste: #{@coste} \n    numHoteles: #{@numHoteles} \n    numCasas: #{@numCasas} \n    Tipo: #{@tipo} \n    Titulo: #{@titulo} \n }"
      else
        if tipo == TipoCasilla::IMPUESTO
           " \n Casilla{ \n    NumeroCasilla: #{@numeroCasilla} \n    Coste: #{@coste} \n    Tipo: #{@tipo} \n }"
        else
          " \n Casilla{ \n    NumeroCasilla: #{@numeroCasilla} \n    Tipo: #{@tipo} \n }" 
        end
      end
    end
    
  end
end

