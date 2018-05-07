## Se parte de nuevo de la clase Persona definida anteriormente, cuyo código es el que se muestra a continuación
## Realiza los ejercicios 1, 2 y 3 
#
#class Persona  
#  attr_accessor :nombre, :edad 
#  
#  def initialize(unNombre, unaEdad)
#    @nombre=unNombre
#    @edad=unaEdad    
#  end
#  
#  def come
#    'rico'
#  end
#  
#  def habla
#    'bla bla bla'
#  end  
# 
#  def saludo
#    "hola, me llamo #{@nombre} y tengo #{@edad} años"
#  end
#end

#
## ---------------1. Define una variable de clase ----------------------------
## 
#class Persona
#  @@planeta = 'Tierra' 
#end
#
## prueba el uso de la variable de clase
##
# p2=Persona.new('Carmen', 22)
# puts p2.nombre
# puts p2.planeta # ¿Qué ocurre? ¿por qué da ese error?
#
##-------------------2. Define un método de clase-----------------------------
##
#class Persona
#    @@planeta= "Tierra"
#  def self.planeta      # método de clase, también def Persona.planeta
#    @@planeta
#  end
#end
## prueba el uso del método de clase
#
# puts Persona.planeta 
# p1=Persona.new("Juan",30)
# puts p1.planeta
 
#  

## -------------3. Define un método de instancia que acceda a una variable de clase.
#
#class Persona
#  @@planeta ="Tierra"
#  def procedencia  # Método de instancia
#    @@planeta       # variable de clase
#  end
#end
#
## Prueba el uso del método de instancia que accede a la variable de clase.
##
#p2 = Persona.new("Ana",25) 
#puts p2.procedencia
#
### Comenta todo el código anterior
#
###-----------------------------------------------------------------------------
### Finalmente la clase Persona es la siguiente: 
###  (quita los comentarios y realiza el ejercicio 4)  
##
class Persona
  
  attr_accessor :nombre, :edad 
  @@planeta = 'Tierra'
  
  def initialize(unNombre, unaEdad)
    @nombre=unNombre
    @edad=unaEdad    
  end  
  def come
    'rico'
  end  
  def habla
    'bla bla bla'
  end 
  def saludo
    "hola, me llamo #{@nombre} y tengo #{@edad} años"
  end
  
  def self.planeta     
    @@planeta
  end
  def procedencia
    @@planeta
  end
end 
## 

## --------- 4. Define el método inspect para la clase Persona. ----------------
#
p1 = Persona.new('Ana',12)
puts p1.inspect    # método inspect definido para todos los objetos.

## Redefinición del método inspect para que la información que nos proporciona 
## sea más entendible  #
#
class Persona
  def inspect
      puts "soy de la clase #{self.class.to_s} 
          mi identifidad es: #{self.object_id} 
          mi estado es: nombre = #{self.nombre}, edad =#{self.edad}, 
          planetav=#{self.procedencia}"    
  end
end

p1 = Persona.new("Pepe",15)
puts p1.inspect 

 