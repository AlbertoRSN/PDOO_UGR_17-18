#encoding: UTF-8


require_relative 'bicicleta.rb'

module El_Club 
  class Ciclista
  
    attr_accessor :nombre, :edad, :miBicicleta, :miClub # se generan de forma automática los consultores y modificadores básicos
  
    def initialize(nom,edad, bici,club)
      @nombre=nom;
      @edad=edad;
      @miBicicleta=bici;
      @miClub = club
    end  
    
    def salirEnBici(km)
         miBicicleta.incrementarKilometros(km); # invocando a un método privado
    end
    
    def salirEnBiciHasta(lugar,km)
         miBicicleta.hacerRuta(lugar,km); 
    end
    
    def cuantoskilometros
        return miBicicleta.kilometrosRecorridos;    
    end
    
    def ruedasDeMiBici
        return Bicicleta.numeroRuedas; # invocando a un método de clase
    end
    
    def to_s
      "Me llamo #{@nombre} tengo #{@edad}  años  
        pertenezco al club de ciclismo #{@miClub.nombre} 
        tengo una bici, #{@miBicicleta.to_s}"
    end
end
end # fin de modulo UnModulo
 

