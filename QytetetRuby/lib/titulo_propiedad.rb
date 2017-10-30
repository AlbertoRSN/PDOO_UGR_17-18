# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

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
    private_class_method :new
    
    def initialize(nombre, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar, propietario, casilla)
      @nombre = nombre
      @alquilerBase = alquilerBase
      @factorRevalorizacion = factorRevalorizacion
      @hipotecada = false
      @hipotecaBase = hipotecaBase
      @precioEdificar = precioEdificar
      @propietario = nil
      @casilla = casilla
    end
    
    def self.crear_titulo_sin_propietario(nombre, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar)
      new(nombre,alquilerBase,factorRevalorizacion,hipotecaBase,precioEdificar,nil, nil)
    end
    
    def self.crear_titulo_con_propietario(nombre, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar, hipotecada, propietario, casilla)
      new(nombre, alquilerBase, factorRevalorizacion, hipotecaBase, precioEdificar, propietario, casilla)
    end

    #----------------------------------------------------------------------

    #------------------------------METODOS---------------------------------
    
    def cobrar_alquiler(coste)
      
    end
    
    def propietario_encarcelado
      
    end
    
    def tengo_propietario
      
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
