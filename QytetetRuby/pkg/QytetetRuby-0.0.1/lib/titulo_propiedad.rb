# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  
  class TituloPropiedad
    
    attr_accessor :nombre //Strign/
    attr_writter :hipotecada //boleano/
    attr_accessor :alquilerBase //int/
    attr_accessor :factorRevalorizacion //float/
    attr_accessor :hipotecaBase //int/
    attr_accessor :precioEdificar //int/
    
    private :nombre, :hipotecada, :alquilerBase, :factorRevalorizacion, :hipotecaBase, :precioEdificar
    
    def initialize(nombre, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar)
      @nombre = nombre
      @alquilerBase = alquilerBase
      @factorRevalorizacion = factorRevalorizacion
      @hipotecaBase = hipotecaBase
      @precioEdificar = precioEdificar
    end
    
    #¿Es necesario habiendo attr_writter?
    def set_hipotecada(hipotecada)
      @hipotecada=hipotecada
    end
    
    
  end
end
