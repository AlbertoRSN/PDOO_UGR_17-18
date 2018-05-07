#encoding: UTF-8


module El_Club
  class Club
   attr_reader :nombre, :direccion
   
    def initialize(nom,direc)
     @nombre = nom
     @direccion = direc
     @socios = Array.new
    end
    
    def nuevoSocio(unSocio)
      @socios.push(unSocio)
    end
    
    def misSocios
      puts "Los socios del club son: "
      @socios.each { |socio| puts "nombre: " + socio.nombre  }      
    end
    
  end
end
 
 
