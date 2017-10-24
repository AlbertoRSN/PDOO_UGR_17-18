#encoding: utf-8 

#MAIN

require_relative "sorpresa"
require_relative "tipo_sorpresa"
require_relative "casilla"
require_relative "tipo_casilla"
require_relative "titulo_propiedad"
require_relative "tablero"


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
      puts "\n-------------------METODO1 - VALORES > 0 ----------------------"
      metodo1
      puts "\n------------------------------------------------------------------"
      puts "\n---------------METODO2 - TIPOSORPRESA=IRACASILL ------------------"
      metodo2
      puts "\n------------------------------------------------------------------"
      puts "\n---------------METODO3 - TIPOSORPRESA = ARGUMENTO-----------------"
      metodo3 (TipoSorpresa::SALIRCARCEL)
      puts "\n------------------------------------------------------------------"
      
      puts "\n-----------------------MOSTRAR CASILLAS --------------------------"
      
      puts Casilla.new(4, 10, TipoCasilla::CALLE, TituloPropiedad.new("HOLA", 10, 2, 10, 20))
      puts Casilla.new_casilla(6, TipoCasilla::PARKING)
      puts Casilla.new_casilla_impuesto(8, 100, TipoCasilla::IMPUESTO)
      
      puts "\n------------------------------------------------------------------"
      
      puts "\n-----------------------MOSTRAR TABLERO---------------------------"
      #COMO MOSTRAR EL TABLERO.
      #Tablero t = Tablero.new()
      puts Tablero.new
      
      puts "\n------------------------------------------------------------------"
          
    end
    
  #End de la CLASE    
  end
  
  PruebaQytetet.inicializar_sorpresas
  PruebaQytetet.main
  
 
end
