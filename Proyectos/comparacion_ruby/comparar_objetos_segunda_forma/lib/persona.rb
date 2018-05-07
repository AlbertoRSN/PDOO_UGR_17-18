
 
class Persona
  attr_reader  :edad, :nombre 
  
  def initialize(nombre,edad)
    @nombre= nombre
    @edad = edad 
  end
  def <=>per
    @edad<=>per.edad
  end
  # criterio de orden el nombre
#  def <=> per
#    @nombre <=> per.nombre
#  end
end
