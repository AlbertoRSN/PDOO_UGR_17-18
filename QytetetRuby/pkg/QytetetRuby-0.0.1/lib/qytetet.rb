#encoding: utf-8

requite "singleton"

module ModeloQytetet
  
  class Qytetet
    
    include Singleton
    
    #ATRIBUTOS DE CLASE
    @@MAX_JUGADORES = 4
    @@MAX_CARTAS = 10
    @@MAX_CASILLAS = 20
    @@PRECIO_LIBERTAD = 200
    @@SALDO_SALIDA = 1000
    
        
    #ATRIBUTOS DE RELACIONES
    attr_accessor :cartaActual
    attr_accessor :jugadorActual
    attr_accessor :tablero
    
    dado = Dado.instance
    
    
    def initialize()
      @mazo = Array.new
      @cartaActual=nil
      @tablero = nil
      @jugadorActual = nil
    end
    
    #--------------------------METODOS------------------------------
    
    def aplicar_sorpresa       
    end
    
    def cancelar_hipoteca      
    end
    
    def comprar_titulo_propiedad      
    end 
    
    def edificar_casa      
    end
    
    def edificar_hotel     
    end
    
    def hipotecar_propiedad(casilla)      
    end
    
    def inicializar_juego(nombres)      
    end
    
    def intentar_salir_carcel(metodo)      
    end
    
    def jugar      
    end
    
    def obtener_ranking(list)      
    end
    
    def propiedades_hipotecadas_jugador(hipotecadas)     
    end
    
    def siguiente_jugador     
    end
    
    def vender_propiedad(casilla)      
    end
    
    private
    def encarcelar_jugador
    end
    
    private
    def inicializar_cartas_sorpresa
      @mazo<< Sorpresa.new("¡Felicidades! Hoy es dia de pago, recibes: ", 100, TipoSorpresa::PAGARCOBRAR)
      @mazo<< Sorpresa.new("¡Mala Suerte! Dia de impuestos, te toca pagar: ", 50, TipoSorpresa::PAGARCOBRAR)
      @mazo<< Sorpresa.new("¡Mala Suerte! Directo a la carcel", 5, TipoSorpresa::IRACASILLA)
      @mazo<< Sorpresa.new("El mazo de cartas te manda a la casilla numero ", 12, TipoSorpresa::IRACASILLA)
      @mazo<< Sorpresa.new("El mazo de cartas te manda a la casilla numero ", 19, TipoSorpresa::IRACASILLA)
      @mazo<< Sorpresa.new("Hacienda te cobra", 200, TipoSorpresa::PORCASAHOTEL)
      @mazo<< Sorpresa.new("Hacienda te devuelve", 50, TipoSorpresa::PORCASAHOTEL)
      @mazo<< Sorpresa.new("¡Felicidades!, es tu cumpleaños todos los jugadores te pagan ", 50, TipoSorpresa::PORJUGADOR)
      @mazo<< Sorpresa.new("Es tu dia de mala suerte, una apuesta te hace pagar a todos los jugadores", 50, TipoSorpresa::PORJUGADOR)
      @mazo<< Sorpresa.new("¡Enhorabuena!, quedas en libertad ", 0, TipoSorpresa::SALIRCARCEL)
    
      @mazo.shuffle! 
    end
    
    private
    def inicializar_jugadores(nombres)
      nombres.each { |n|
        @jugadores << Jugador.new(n)
      }
    end
    
    private
    def inicializar_tablero
      @tablero = Tablero.new
    end
    
    private
    def salida_jugadores
    end
    
    def to_s()
     #con todas las variables que no sean nulas 
    end
    
    
  end #clase

end#modulo
