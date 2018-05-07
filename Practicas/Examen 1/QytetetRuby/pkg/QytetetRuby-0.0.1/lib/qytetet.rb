#encoding: utf-8

require "singleton"
require_relative "dado"

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
      #inicializar_tablero
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
    
    #METODOS PRIVADOS
    private
    def encarcelar_jugador
    end
    
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
    
    
    def inicializar_jugadores(nombres)
      nombres.each { |n|
        @jugadores << Jugador.new(n)
      }
    end
    
    
    def inicializar_tablero
      @tablero = Tablero.new
    end
    
    
    def salida_jugadores
      
    end
    
    public
    def to_s()
      "\n\tMAX Jugadores: #{@@MAX_JUGADORES} 
        MAX Cartas: #{@@MAX_CARTAS} 
        Precio Libertad: #{@@PRECIO_LIBERTAD} 
        Saldo Salida: #{@@SALDO_SALIDA}
      \n -TABLERO- #{@tablero}
      \n Mazo: #{@mazo}
      \n Jugador Actual: #{@jugadorActual}
      \n Carta Actual: #{@cartaActual}"
      
    end
    
    
  end #clase

end#modulo
