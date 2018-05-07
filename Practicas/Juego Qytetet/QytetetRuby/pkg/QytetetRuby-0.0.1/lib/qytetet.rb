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
    attr_accessor :carta_actual
    attr_accessor :jugador_actual
    attr_accessor :tablero
    attr_accessor :jugadores
    
    dado = Dado.instance
    
    
    def initialize()
      @mazo = Array.new
      @carta_actual=nil
      @tablero = nil
      @jugador_actual = nil
      @jugadores = nil
    end
    
    #--------------------------METODOS------------------------------
    
    def aplicar_sorpresa    
      tiene_propietario = false
      if(@carta_actual.tipo == TipoSorpresa::PAGARCOBRAR)
        @jugador_actual.modificar_saldo(@carta_actual.valor)        
      end
      if(@carta_actual.tipo == TipoSorpresa::IRACASILLA)
        es_carcel = @tablero.es_casilla_carcel(@carta_actual.valor)
        if(es_carcel)
          encarcelar_jugador
        else
          nueva_casilla = @tablero.obtener_numero_casilla(@carta_actual.valor)
          tiene_propietario = @jugador_actual.actualizar_posicion(nueva_casilla)
        end
      end
      if(@carta_actual.tipo == TipoSorpresa::PORCASAHOTEL)
        @jugador_actual.pagar_cobrar_por_casa_y_hotel(@carta_actual.valor)
      end
      if(@carta_actual.tipo == TipoSorpresa::PORJUGADOR)
        @jugadores.each do |j|
          if(j != @jugador_actual)
            j.modificar_saldo(@carta_actual.valor)
            @jugador_actual.modificar_saldo(-@carta_actual.valor)
          end
        end
      end
      if(@carta_actual.tipo == TipoSorpresa::SALIRCARCEL)
        @jugador_actual.set_carta_libertad(@carta_actual)
      else
        @mazo<<@carta_actual
      end
      tiene_propietario
    end
    
    def cancelar_hipoteca(casilla)
      puedocancelar = false
        
      if(@jugador_actual.saldo > casilla.cancelar_hipoteca)
            puedocancelar = true
            @jugador_actual.modificar_saldo(-casilla.cancelar_hipoteca)
            casilla.titulo.hipotecada = false
      end
        
      puedocancelar
    end
    
    def comprar_titulo_propiedad
      puedo_comprar = @jugador_actual.comprar_titulo
      puedo_comprar
    end 
    
    def edificar_casa(casilla)
      if(casilla.soy_edificable)
        se_puede_edificar = casilla.se_puede_edificar_casa
        if(se_puede_edificar)
          puedo_edificar = @jugador_actual.puedo_edificar_casa(casilla)
          if(puedo_edificar)
            coste_edificar_casa = casilla.edificar_casa
            @jugador_actual.modificar_saldo(-coste_edificar_casa)
          end
        end
      end
      
    end
    
    
    def edificar_hotel(casilla)
      if(casilla.soy_edificable)
        se_puede_edificar = casilla.se_puede_edificar_hotel
        if(se_puede_edificar)
          puedo_edificar = @jugador_actual.puedo_edificar_hotel(casilla)
          if(puedo_edificar)
            coste_edificar_hotel = casilla.edificar_hotel
            @jugador_actual.modificar_saldo(-coste_edificar_hotel)
          end
        end
      end
    end
    
    def hipotecar_propiedad(casilla)
      puedo_hipotecar_propiedad
      
      if(casilla.soy_edificable)
        se_puede_hipotecar = !(casilla.esta_hipotecada)
        if(se_puede_hipotecar)
          puedo_hipotecar = @jugador_actual.puedo_hipotecar(casilla)
          if(puedo_hipotecar)
            cantidad_recibida = casilla.hipotecar
            @jugador_actual.modificar_saldo(cantidad_recibida)
          end
        end
      end
      
      puedo_hipotecar_propiedad
    end
    
    def inicializar_juego(nombres)
      inicializar_jugadores(nombres)
      inicializar_cartas_sorpresa
      inicializar_tablero
      salida_jugadores
    end
    
    def intentar_salir_carcel(metodo) 
       libre = false
       
      if(metodo == MetodoSalirCarcel::TIRANDODADO)
        valor_dado = dado.tirar
        libre = (valor_dado>5)
      else
        if(metodo == MetodoSalirCarcel::PAGANDOLIBERTAD)
          tengo_saldo = @jugador_actual.pagar_libertad(-@@PRECIO_LIBERTAD)
          libre = tengo_saldo
        end
      end
      
      if(libre)
        @jugador_actual.encarcelado = false
      end
      
      libre
    end
    
    def jugar
      tiene_propietario
      valor_dado = dado.tirar
      casilla_posicion = @jugador_actual.casilla_actual
      nueva_casilla = @tablero.obtener_nueva_casilla(casilla_posicion, valor_dado)
      tiene_propietario = @jugador_actual.actualizar_posicion(nueva_casilla)
      
      if(!nueva_casilla.soy_edificable)
        if(nueva_casilla.tipo == TipoCasilla::JUEZ)
          encarcelar_jugador
        else
          if(nueva_casilla.tipo == TipoCasilla::SORPRESA)
            @carta_actual = @mazo.delete_at(0)
          end
        end
      end
      tiene_propietario
    end
    
    def obtener_ranking(list)      
    end
    
    def propiedades_hipotecadas_jugador(hipotecadas)
      
      propiedades = Array.new
      propiedades = @jugador_actual.obtener_propiedades_hipotecadas(hipotecadas)
      
      casilla_propiedad = Array.new
      
      propiedades.each do |p|
        casilla_propiedad<<p.casilla
      end
  
      casilla_propiedad
    end
    
    def siguiente_jugador
      numeroJug = @jugadores.index(@jugador_actual)
      
      if(numeroJug == @jugadores.length)
        @jugador_actual=@jugadores.at(0)
      else 
        @jugador_actual=@jugadores.at(numeroJug+1)
      end
      #@jugador_actual
    end

    def vender_propiedad(casilla)      
      puedo_vender
      
      if(casilla.soy_edificable)
        puedo_vender = @jugador_actual.puedo_vender_propiedad(casilla)
        if(puedo_vender)
          @jugador_actual.vender_propiedad(casilla)
        end
      end
      
      puedo_vender
    end
    
    #METODOS PRIVADOS
    private
    def encarcelar_jugador
      if(!@jugador_actual.tengo_carta_libertad)
        casilla_carcel = @tablero.carcel
        @jugador_actual.ir_a_carcel(casilla_carcel)
      else
        carta = @jugador_actual.devolver_carta_libertad
        @mazo<<carta
      end
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
      
      salida = tablero.casillas[0]
      
      @jugadores.each do |j|
        j.modificar_saldo(7500)
        j.actualizar_posicion(salida)
      end
      
      @jugadores.shuffle!
      @jugador_actual = @jugadores.at(0)
    end
    
    public
    def to_s()
      "\n\tMAX Jugadores: #{@@MAX_JUGADORES} 
        MAX Cartas: #{@@MAX_CARTAS} 
        Precio Libertad: #{@@PRECIO_LIBERTAD} 
        Saldo Salida: #{@@SALDO_SALIDA}
      \n -TABLERO- #{@tablero}
      \n - JUGADORES - #{@jugadores}
      \n Mazo: #{@mazo}
      \n Jugador Actual: #{@jugador_actual}
      \n Carta Actual: #{@carta_actual}"
      
      
    end
    
    
  end #clase

end#modulo
