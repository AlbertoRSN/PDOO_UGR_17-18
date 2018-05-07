#:encoding: utf-8
## Ejemplo básico de creación de una clase, métodos de inicialización y de instancia. Acceso a variables de instancia.
## ------- Observa la clase que se define a continuación y mantenla sin comentar  ------
#
class Persona 
  
  def initialize(un_nombre, una_edad)
    @nombre= un_nombre
    @edad= una_edad
  end
      
#  def initialize(*datosInicializacion) # otra forma: array de argumentos. Cambiar por el de arriba
#       @nombre, @edad =  datosInicializacion    
#  end
  
  def come
    'rico'
  end
  
  def habla
    'bla bla bla'
  end
  
  def saludo
    "hola, me llamo #{@nombre} y mi edad es #{@edad}"
  end
   
end
#

# Descomenta y ve probando los siguientes bloques

## ------------ 1. Creación de instancias y su uso---------------------- ------
 
#   p1=Persona.new('Juan',12)
#   #p2=Persona.new  # solo para probar con initialize comentado
#   puts p1.saludo
#   #p3=Persona.new('Juan')  # solo para probar con initialize comentado
#   puts p1.saludo
#   # puts p2.saludo
#   # puts p3.saludo
  
 
## --------------1.0 Consultores (get) -----------------------
## Ejecuta lo siguiente:
#
#  p1=Persona.new('Juan', 21)  
#  puts p1.nombre #  Error, ya que la clase no tiene definido el consultor correspondiente  
#  
## ------------ 1.1 Defínelos y pruebalos ---------------------------------------------
## De la siguiente forma:
##
#  class Persona 
#   attr_reader :nombre, :edad
#  end
#   
#  p1=Persona.new('Luis', 19)   
#  puts p1.nombre
##   
##  

## --------------2.0 Modificadores (set)------------------------------
## Ejecuta lo siguiente:
#
#  p1=Persona.new('Juan', 21)   
#  p1.nombre ="Juanito" #  Error, ya que la clase no tiene definido el modificador#   
#  puts p1.nombre
#  
## ------------ 2.1 Defínelos y pruebalos--------------------------------------------
## De la siguiente forma:
#
#  class Persona 
#   attr_writer :nombre, :edad
#  end 
#  
#  p1=Persona.new('Juan', 21)    
#  p1.nombre ="Juanito"  # modicador de atributo básico
#  puts p1.nombre
##     

## --------------------3.0. Consultores y modificadores (get/set)-----------------
## Ejecuta lo siguiente:
#
#  p1=Persona.new('Juan', 21)
#  puts p1.nombre      # Error, no está definido en consultor correspondiente
#  p1.nombre ="Juanito" #  Error, ya que la clase no tiene definido el modificador#   
#  puts p1.nombre
#  
## ------------ 3.1 Defínelos y pruebalos-------------------------------------------
## De la siguiente forma:
#
#  class Persona 
#   attr_accessor :nombre, :edad
#  end
#
#  p1=Persona.new('Juan', 21)
#  puts p1.nombre    
#  p1.nombre ="Juanito"  
#  puts p1.nombre
#  
#  
##-----------4. Otra forma de definir consultores y modificadores (estilo Java, no habitual en Ruby) 
## De la siguiente forma:
#
#class Persona
#  def get_nombre # Consultor
#    @nombre
#  end
# 
#  def set_nombre(otroNombre) # Modificador
#    @nombre=otroNombre.upcase
#  end
#end
  
## Prueba su funcionamiento con el siguiente código
#  
#p1 = Persona.new('Pepe', 20)
#puts p1.get_nombre
#p1.set_nombre("Pepito")
#puts p1.inspect
#   