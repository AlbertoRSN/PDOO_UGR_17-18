#encoding: utf-8

module ModeloQytetet
  
  class Tablero
    
    attr_accessor :carcel
    
    def initialize
      inicializar()
    end

    def to_s()
      result=""
      @casillas.each do |c|
         result=result+c.to_s
        end
        result
    end
    
    #COMO ACCEDER AL NUMERO DE CASILLA
#    def es_casilla_carcel(numCasilla)
#      es_carcel = false
#      
#      @casillas.each do |c|
#        if(c.numeroCasilla == numCasilla)
#          es_carcel = true
#        end
#      end
#      
#      es_carcel
#    end

    
    def obtener_casilla_numero(numeroCasilla)
      
    end
    
    def obtener_nueva_casilla(casilla, desplazamiento)
      
    end
    
    private
    def inicializar()
      @casillas = Array.new
      
      @casillas << Casilla.new_casilla_no_calle(0, 0, TipoCasilla::SALIDA)
      @casillas << Casilla.new_casilla_calle(1, 10, TituloPropiedad.new("Abrazamozas", 50, 10, 150, 250))
      @casillas << Casilla.new_casilla_calle(2, 15, TituloPropiedad.new("Catahuevos", 50, 10, 200, 275))
      @casillas << Casilla.new_casilla_no_calle(3, 0, TipoCasilla::SORPRESA)
      @casillas << Casilla.new_casilla_calle(4, 20, TituloPropiedad.new("Las Flores", 55, 12, 250, 300))
      
      @casillas << carcel
      
      @casillas << Casilla.new_casilla_calle(6, 30, TituloPropiedad.new("Animales Salvajes", 60, 12, 300, 350))
      @casillas << Casilla.new_casilla_calle(7, 40, TituloPropiedad.new("Rompelanzas", 65, 13, 350, 400))
      @casillas << Casilla.new_casilla_no_calle(8, 100, TipoCasilla::IMPUESTO)
      @casillas << Casilla.new_casilla_calle(9, 59, TituloPropiedad.new("Frutos Del Bosque", 70, 14, 400, 450))
      @casillas << Casilla.new_casilla_no_calle(10, 0, TipoCasilla::SORPRESA)
      @casillas << Casilla.new_casilla_calle(11, 60, TituloPropiedad.new("La Alegria de la Huerta", 75, 15, 500, 500))
      @casillas << Casilla.new_casilla_no_calle(12, 0, TipoCasilla::PARKING)
      @casillas << Casilla.new_casilla_calle(13, 80, TituloPropiedad.new("Malpensa", 80, 15, 600, 550))
      @casillas << Casilla.new_casilla_calle(14, 90, TituloPropiedad.new("Del Amor Hermoso", 90, 18, 700, 600))
      @casillas << Casilla.new_casilla_no_calle(15, 0, TipoCasilla::JUEZ)
      @casillas << Casilla.new_casilla_calle(16, 120, TituloPropiedad.new("Rio Caliente", 95, 18, 800, 650))
      @casillas << Casilla.new_casilla_no_calle(17, 0, TipoCasilla::SORPRESA)
      @casillas << Casilla.new_casilla_calle(18, 130, TituloPropiedad.new("Rompete El Alma", 20, 100, 900, 700))
      @casillas << Casilla.new_casilla_calle(19, 200, TituloPropiedad.new("Salsipuedes", 100, 20, 1000, 750))   
    end
    
  end
end
