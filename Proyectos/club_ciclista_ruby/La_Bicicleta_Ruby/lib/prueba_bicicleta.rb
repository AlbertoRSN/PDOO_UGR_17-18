
require_relative 'bicicleta.rb' # para poder acceder a lo definido en el fichero un_modulo.rb

module OtroModulo
  include UnModulo  
    
  # Ejemplos de acceso a la clase Bicicleta desde un módulo externo al que se define la clase y en otro archivo
  # Procede igual que antes descomenta/comenta trozos de códido (están agrupados en bloques), prueba, intenta entender qué ocurre 
  # y elimina los posibles errores sin modificar la clase Bicicleta, salvo que se indique lo contrario

#   puts Bicicleta.numeroRuedas
#   Bicicleta.incrementarNumeroBicicletas
#   puts Bicicleta.numeroBicicletas

#   bici= Bicicleta.new()
#   puts bici.class.name == 'Bicicleta' 
#   bici.hacerRuta('jaen', 100)
#   bici.desplazarse('Malaga')
#   puts bici.kilometrosRecorridos.to_s
#   puts bici.inspect
#   puts "Color de la bicicleta = " + bici.color
#   puts "Numero de bicicletas construidas = " + Bicicleta.numeroBicicletas.to_s

  
#   miBici = Bicicleta.new(5,"rojo")
#   puts "Color de la bicicleta = " + miBici.color
#   miBici.color="verde"
#   puts "Color de la bicicleta = " + miBici.color
#   puts "Numero de bicicletas construidas = " + Bicicleta.numeroBicicletas.to_s;
#   puts "Numero de ruedas " + miBici.numeroRuedas.to_s
#   puts "Numero de bicicletas construidas hasta el momento" +miBici.numeroBicicletas.to_s
#   puts "Kilometros recorridos " +miBici.kilometrosRecorridos.to_s
#   puts miBici.hacerRuta("Sierra",64)
#   puts miBici.hacerRuta("Lago", 6)
#   miBici.incrementarKilometros(50) # da error por ser privado
#   puts miBici.desplazarse("Playa")  

  # Ejercicio: Escribe el código anterior para que funcione sin hacer "include UnModulo"
  
  # incluye todo el código que consideres para probar el ámbito y visibilidad de las variables y métodos de una clase
end
