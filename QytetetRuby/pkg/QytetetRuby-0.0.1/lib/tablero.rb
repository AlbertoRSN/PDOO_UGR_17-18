# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

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
    
    def es_casilla_carcel(numerocasilla)
      
    end

    
    def obtener_casilla_numero(numeroCasilla)
      
    end
    
    def obtener_nueva_casilla(casilla, desplazamiento)
      
    end
    
    private
    def inicializar()
      @casillas = Array.new
      
      @casillas << Casilla.new_casilla_no_calle(0, 0, TipoCasilla::SALIDA)
      @casillas << Casilla.new_casilla_calle(1, 10, TituloPropiedad.crear_titulo_sin_propietario("Abrazamozas", 50, 10, 150, 250))
      @casillas << Casilla.new_casilla_calle(2, 15, TituloPropiedad.crear_titulo_sin_propietario("Catahuevos", 50, 10, 200, 275))
      @casillas << Casilla.new_casilla_no_calle(3, 0, TipoCasilla::SORPRESA)
      @casillas << Casilla.new_casilla_calle(4, 20, TituloPropiedad.crear_titulo_sin_propietario("Las Flores", 55, 12, 250, 300))
      
      @casillas << carcel
      
      @casillas << Casilla.new_casilla_calle(6, 30, TituloPropiedad.crear_titulo_sin_propietario("Animales Salvajes", 60, 12, 300, 350))
      @casillas << Casilla.new_casilla_calle(7, 40, TituloPropiedad.crear_titulo_sin_propietario("Rompelanzas", 65, 13, 350, 400))
      @casillas << Casilla.new_casilla_no_calle(8, 100, TipoCasilla::IMPUESTO)
      @casillas << Casilla.new_casilla_calle(9, 59, TituloPropiedad.crear_titulo_sin_propietario("Frutos Del Bosque", 70, 14, 400, 450))
      @casillas << Casilla.new_casilla_no_calle(10, 0, TipoCasilla::SORPRESA)
      @casillas << Casilla.new_casilla_calle(11, 60, TituloPropiedad.crear_titulo_sin_propietario("La Alegria de la Huerta", 75, 15, 500, 500))
      @casillas << Casilla.new_casilla_no_calle(12, 0, TipoCasilla::PARKING)
      @casillas << Casilla.new_casilla_calle(13, 80, TituloPropiedad.crear_titulo_sin_propietario("Malpensa", 80, 15, 600, 550))
      @casillas << Casilla.new_casilla_calle(14, 90, TituloPropiedad.crear_titulo_sin_propietario("Del Amor Hermoso", 90, 18, 700, 600))
      @casillas << Casilla.new_casilla_no_calle(15, 0, TipoCasilla::JUEZ)
      @casillas << Casilla.new_casilla_calle(16, 120, TituloPropiedad.crear_titulo_sin_propietario("Rio Caliente", 95, 18, 800, 650))
      @casillas << Casilla.new_casilla_no_calle(17, 0, TipoCasilla::SORPRESA)
      @casillas << Casilla.new_casilla_calle(18, 130, TituloPropiedad.crear_titulo_sin_propietario("Rompete El Alma", 20, 100, 900, 700))
      @casillas << Casilla.new_casilla_calle(19, 200, TituloPropiedad.crear_titulo_sin_propietario("Salsipuedes", 100, 20, 1000, 750))   
    end
    
  end
end
