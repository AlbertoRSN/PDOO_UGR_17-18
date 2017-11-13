#encoding: utf-8

module ModeloQytetet
  
  class TituloPropiedad
    
    attr_accessor :nombre #Strign
    attr_accessor :hipotecada #boleano
    attr_accessor :alquilerBase #int
    attr_accessor :factorRevalorizacion #float
    attr_accessor :hipotecaBase #int
    attr_accessor :precioEdificar #int
    
    #atributo clase jugador
    attr_accessor :propietario
    
    #atributo clase Casilla
    attr_accessor :casilla
    
    
    #---------------------------CONSTRUCTORES----------------------------
  
    def initialize(nombre, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar)#,casilla);
      @nombre = nombre
      @alquilerBase = alquilerBase
      @factorRevalorizacion = factorRevalorizacion
      @hipotecada = false
      @hipotecaBase = hipotecaBase
      @precioEdificar = precioEdificar
      @propietario = nil
      @casilla = nil
    end

    #----------------------------------------------------------------------

    #------------------------------METODOS---------------------------------
    
    def cobrar_alquiler(coste)
      
    end
    
    def propietario_encarcelado
      
    end
    
    def tengo_propietario
      tengo = false
      if(@propietario != nil)
        tengo = true
      end
      tengo
    end
    
    
    
    
    #---------------------------TO_S-------------------------------------
    def to_s()
      "\n       Nombre: #{@nombre} 
       Hipotecada: #{@hipotecada} 
       Alquiler Base: #{@alquilerBase} 
       Factor Revalorizacion: #{@factorRevalorizacion} 
       Hipote Base: #{@hipotecaBase} 
       Precio Edificar: #{@precioEdificar}  
       Propietario: #{@propietario}
       Casilla: #{@casilla}
      "
    end
      
  end
end
