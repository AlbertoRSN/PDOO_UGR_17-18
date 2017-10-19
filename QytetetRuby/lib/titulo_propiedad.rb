# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module ModeloQytetet
  
  class TituloPropiedad
    
    attr_accessor :nombre #Strign/
    attr_accessor :hipotecada #boleano/
    attr_accessor :alquilerBase #int/
    attr_accessor :factorRevalorizacion #float/
    attr_accessor :hipotecaBase #int/
    attr_accessor :precioEdificar #int/
    
    def initialize(nombre, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar)
      @nombre = nombre
      @alquilerBase = alquilerBase
      @factorRevalorizacion = factorRevalorizacion
      @hipotecada = false
      @hipotecaBase = hipotecaBase
      @precioEdificar = precioEdificar
    end    
    
    def to_s()
      "\n Nombre: #{@nombre} \n Hipotecada: #{@hipotecada} \n Alquiler Base: #{@alquilerBase} \n Factor Revalorizacion: #{@factorRevalorizacion} \n Hipote Base: #{@hipotecaBase} \n Precio Edificar: #{@precioEdificar} \n }" 
    end
      
  end
end
