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
      @casillas.each do |c|
         puts c
        end
    end
    
    private
    def inicializar()
      @casillas = Array.new
      
      @casillas << Casilla.new_casilla(0, TipoCasilla::SALIDA)
      @casillas << Casilla.new(1, 10 , TipoCasilla::CALLE, TituloPropiedad.new("Abrazamozas", 50, 10, 150, 250))
      @casillas << Casilla.new(2, 15, TipoCasilla::CALLE, TituloPropiedad.new("Catahuevos", 50, 10, 200, 275))
      @casillas << Casilla.new(3, 0, TipoCasilla::SORPRESA, nil)
      @casillas << Casilla.new(4, 20, TipoCasilla::CALLE, TituloPropiedad.new("Las Flores", 55, 12, 250, 300))
      @carcel = Casilla.new(5, 0, TipoCasilla::CARCEL, nil)
      @casillas << carcel
      @casillas << Casilla.new(6, 30, TipoCasilla::CALLE, TituloPropiedad.new("Animales Salvajes", 60, 12, 300, 350))
      @casillas << Casilla.new(7, 40, TipoCasilla::CALLE, TituloPropiedad.new("Rompelanzas", 65, 13, 350, 400))
      @casillas << Casilla.new(8, 100, TipoCasilla::IMPUESTO, nil)
      @casillas << Casilla.new(9, 59, TipoCasilla::CALLE, TituloPropiedad.new("Frutos Del Bosque", 70, 14, 400, 450))
      @casillas << Casilla.new(10, 0, TipoCasilla::SORPRESA, nil)
      @casillas << Casilla.new(11, 60, TipoCasilla::CALLE, TituloPropiedad.new("La Alegria de la Huerta", 75, 15, 500, 500))
      @casillas << Casilla.new(12, 0, TipoCasilla::PARKING, nil)
      @casillas << Casilla.new(13, 80, TipoCasilla::CALLE, TituloPropiedad.new("Malpensa", 80, 15, 600, 550))
      @casillas << Casilla.new(14, 90, TipoCasilla::CALLE, TituloPropiedad.new("Del Amor Hermoso", 90, 18, 700, 600))
      @casillas << Casilla.new(15, 0, TipoCasilla::JUEZ, nil)
      @casillas << Casilla.new(16, 120, TipoCasilla::CALLE, TituloPropiedad.new("Rio Caliente", 95, 18, 800, 650))
      @casillas << Casilla.new(17, 0, TipoCasilla::SORPRESA, nil)
      @casillas << Casilla.new(18, 130, TipoCasilla::CALLE, TituloPropiedad.new("Rompete El Alma", 20, 100, 900, 700))
      @casillas << Casilla.new(19, 200, TipoCasilla::CALLE, TituloPropiedad.new("Salsipuedes", 100, 20, 1000, 750))   
    end
    
  end
end
