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
    
    
    private :numeroCasilla, :coste, :numHoteles, :numCasas, :tipo, :titulo
    
    def initialize(numeroCasilla, coste, numHoteles, numCasas, tipo, titulo)
      @numeroCasilla = numeroCasilla
      @coste = coste
      @numHoteles = numHoteles
      @numCasas = numCasas
      @tipo = tipo
      @titulo=titulo      
    end
    
    def self.new_casilla(numeroCasilla, coste, numHoteles, numCasas, tipo, titulo=nill)
      
    end

    
    def to_s()
      if tipo == TipoCasilla::CALLE
        " \n Casilla{ NumeroCasilla: #{@numeroCasilla} \n Coste: #{@coste} \n numHoteles: #{@numHoteles} \n numCasas: #{@numCasas} \n Tipo: #{@tipo} \n Titulo: #{@tipo}}"
      else
        " \n Casilla{ NumeroCasilla: #{@numeroCasilla} \n Tipo: #{@tipo}}"
      end
    end
        
         
      end
    
    private
    def set_titulo_propiedad(titulo)
      @titulo=titulo
    end
  end
end
