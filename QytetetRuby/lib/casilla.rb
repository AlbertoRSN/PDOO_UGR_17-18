#encoding: utf-8

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
  
    private_class_method :new
    
    #CONSTRUCTORES CON OTRO NOMBRE
    def self.new_casilla_calle(numeroCasilla, coste, titulo)
      new(numeroCasilla,coste, TipoCasilla::CALLE, titulo)
    end
    
    def self.new_casilla_no_calle(numeroCasilla, coste, tipo)
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
    
    def asignar_propietario(jugador)
      
    end
    
    def calcular_valor_hipoteca
      
    end
    
    def cancelar_hipoteca
      
    end
    
    def cobrar_alquiler
      
    end
    
    def edificar_casa
      
    end
    
    def edificar_hotel
      
    end
    
    def esta_hipotecada
      esta = false
      
      if(titulo.hipotecada == true)
        esta = true
      end
      
      esta
    end
    
    def get_coste_hipoteca
      
    end
 
    def get_precio_edificar
      
    end
    
    def hipotecar
      
    end
    
    def precio_total_comprar
      
    end
    
    def propietario_encarcelado
      
    end
    
    def se_puede_edificar_casa
      
    end
    
    def se_puede_edificar_hotel
      
    end
    
    def set_num_casas(nuevoNumero)
      @numCasas = nuevoNumero;
    end
    
    def set_num_hoteles(nuevoNumero)
      @numHoteles = nuevoNumero;
    end
      
    def soy_edificable
      edificable = false
      if(tipo == TipoCasilla::CALLE)
        edificable = true
      end
      edificable
    end
    
    def tengo_propietario
      
    end
    
    def vender_titulo
      
    end
    
    private
    def asignar_titulo_propiedad
      
    end
    
  end
end

