
require_relative 'direccion.rb'
class Persona
  attr_reader  :edad, :direccion
  attr_accessor :nombre
  def initialize(nombre,edad,direccion)
    @nombre= nombre
    @edad = edad
    @direccion = direccion
  end
end
