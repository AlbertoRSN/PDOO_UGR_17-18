

class Direccion
  attr_reader :calle, :numero, :codigoPostal
  attr_accessor :ciudad
  def initialize(calle, numero, cp, ciudad)
    @calle = calle
    @numero = numero
    @codigoPostal = cp
    @ciudad = ciudad    
  end
 
end
