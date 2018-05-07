#encoding: utf-8 

#MAIN

require_relative "sorpresa"
require_relative "tipo_sorpresa"
require_relative "casilla"
require_relative "tipo_casilla"
require_relative "titulo_propiedad"
require_relative "tablero"
require_relative "jugador"
require_relative "qytetet"
require_relative "dado"


module ModeloQytetet
  
  class PruebaQytetet
    
    
    @@mazo = Array.new

    
    def self.inicializar_sorpresas
      @@mazo<< Sorpresa.new("¡Felicidades! Hoy es dia de pago, recibes: ", 100, TipoSorpresa::PAGARCOBRAR)
      @@mazo<< Sorpresa.new("¡Mala Suerte! Dia de impuestos, te toca pagar: ", 50, TipoSorpresa::PAGARCOBRAR)
      @@mazo<< Sorpresa.new("¡Mala Suerte! Directo a la carcel", 5, TipoSorpresa::IRACASILLA)
      @@mazo<< Sorpresa.new("El mazo de cartas te manda a la casilla numero ", 12, TipoSorpresa::IRACASILLA)
      @@mazo<< Sorpresa.new("El mazo de cartas te manda a la casilla numero ", 19, TipoSorpresa::IRACASILLA)
      @@mazo<< Sorpresa.new("Hacienda te cobra", 200, TipoSorpresa::PORCASAHOTEL)
      @@mazo<< Sorpresa.new("Hacienda te devuelve", 50, TipoSorpresa::PORCASAHOTEL)
      @@mazo<< Sorpresa.new("¡Felicidades!, es tu cumpleaños todos los jugadores te pagan ", 50, TipoSorpresa::PORJUGADOR)
      @@mazo<< Sorpresa.new("Es tu dia de mala suerte, una apuesta te hace pagar a todos los jugadores", 50, TipoSorpresa::PORJUGADOR)
      @@mazo<< Sorpresa.new("¡Enhorabuena!, quedas en libertad ", 0, TipoSorpresa::SALIRCARCEL)
    end
    
    
    
    #Metodo que devuelve todas las cartas con valor>0
    def self.metodo1
        @@mazo.each do |s|
        if s.valor > 0
        puts s
        end  
      end 
    end
    
    #Metodo que devuelve las cartas de tipo IRACASILLA
    def self.metodo2
      @@mazo.each do |s|
        if s.tipo == TipoSorpresa::IRACASILLA
         puts s
        end
      end
    end
    
    #Metodo que devuelve sorpresas de TipoSorpresa t
    def self.metodo3 (t)
      @@mazo.each do |s|
        if s.tipo == t
          puts s
        end
      end
    end
    
    
    
    #Metodo main para hacer pruebas - Metodo de clase
    def self.main      
      
      qytetet = Qytetet.instance
      
      puts "\n-------------------METODO1 - VALORES > 0 ----------------------"
      metodo1
      puts "\n------------------------------------------------------------------"
      puts "\n---------------METODO2 - TIPOSORPRESA=IRACASILLA------------------"
      metodo2
      puts "\n------------------------------------------------------------------"
      puts "\n---------------METODO3 - TIPOSORPRESA = ARGUMENTO-----------------"
      metodo3 (TipoSorpresa::SALIRCARCEL)
      puts "\n------------------------------------------------------------------"
      
      puts "\n-----------------------MOSTRAR CASILLAS --------------------------"
      
      #NO ME HE ENTERADO BIEN DE PASARLE CASILLA COMO ARGUMENTO
      #casilla2 = Casilla.new_casilla_calle(6, 0, TituloPropiedad.new("Hola",10,20,200,200,casilla2)) 
      #puts casilla2
      #puts Casilla.new_casilla_calle(4, 10, TituloPropiedad.new("HOLA", 10, 2, 10, 20))
      puts Casilla.new_casilla_no_calle(6, 0, TipoCasilla::PARKING)
      puts Casilla.new_casilla_no_calle(8, 100, TipoCasilla::IMPUESTO)
      #puts Casilla.new_casilla_calle(3, 100, TituloPropiedad.crear_titulo_con_propietario("Pedriiito", 10, 10.0, 100, 200, false, Jugador.new("Alberto"), Casilla.new_casilla_no_calle(6, 0, TipoCasilla::PARKING)))
      
      puts "\n-----------------------------------------------------------------"
      
      puts "\n-----------------------MOSTRAR TABLERO---------------------------"
      #tablero = Tablero.new
      #puts tablero
      #qytetet.inicializar_tablero
      #puts qytetet.tablero
      puts "\n-----------------------------------------------------------------"
          
      
      puts "\n-----------------------MOSTRAR JUGADOR---------------------------"
      j1 = Jugador.new("Alberto Rodriguez")
      puts j1
      puts "\n-----------------------------------------------------------------"
      
      #puts "\n-----------------------CASILLA_CARCEL---------------------------"
      #puts tablero.es_casilla_carcel(3)
      #puts tablero.es_casilla_carcel(5)
      #puts "\n-----------------------------------------------------------------"
      
      
      puts "\n-----------------------MOSTRAR QYTETET---------------------------"
      puts qytetet
      
      
    end
    
  #End de la CLASE    
  end
  
  PruebaQytetet.inicializar_sorpresas
  PruebaQytetet.main
 
end
