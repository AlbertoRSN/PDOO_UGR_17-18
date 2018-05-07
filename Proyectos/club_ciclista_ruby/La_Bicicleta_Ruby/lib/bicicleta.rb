#encoding: UTF-8

module UnModulo
  class Bicicleta
  
     attr_accessor  :color; # variable de instancia para la que se genera de forma automática el consultor y modificador (públicos)
     attr_reader    :marcha, :NUMEROSERIE, :kilometrosRecorridos; # variables de instancia para las que se generan de forma automática consultores públicos
  
    @@NumeroBicicletas=0  # Variable de ámbito de clase, compartida por la clase y el módulo en el que está definida
    @@NUMERORUEDAS=2      # Igual que la anterior
 
    def initialize(*args) # Inicializador de los atributos invocado automáticamente por el constructor
      case args.size
        when 0
          @marcha=0
          @color="gris"
        when 2
          @marcha, @color =args
      end
      @kilometrosRecorridos= 0
      Bicicleta.incrementarNumeroBicicletas
      @NUMEROSERIE=@@NumeroBicicletas+1  
    end

  # consultores
  def self.numeroBicicletas  # Método de instancia del objeto clase
    @@NumeroBicicletas
  end   
  
  def self.incrementarNumeroBicicletas # Método de instancia del objeto clase
    @@NumeroBicicletas += 1
  end 
 
  def numeroRuedas # Método de instancia
    @@NUMERORUEDAS    
  end     
 
  def hacerRuta(lugar, km) # Método de instancia
     desplazarse(lugar)      
     incrementarKilometros(km)   # llamando a un método private no puede usarse self     
  end  

  def desplazarse(lugar) # Método de instancia
   puts "Voy con mi bicicleta #{@color} hasta #{lugar}"
  end  
  
  private  # los siguientes metodos son privados     
   
  def incrementarKilometros(km) # Método de instancia
       @kilometrosRecorridos += km      
  end 
  
  # Forma de hacer los métodos de instancia de clase privados:
#   private_class_method :incrementarNumeroBicicletas # Elimina el comentario y observa qué ocurre. 


  # Procede igual que en Java descomentando/comentando trozos de código y prueba
  # Intenta entender todo lo que ocurre
  # 
  # Uso de la clase Bicicleta desde la propia clase
  # Usando la Bicicleta sin que existan instancias
  
  puts 'Hay ' + Bicicleta.numeroBicicletas.to_s + ' bicicletas'  
  Bicicleta.incrementarNumeroBicicletas
  puts 'Hay '+ Bicicleta.numeroBicicletas.to_s + ' bicicletas'
  puts 'Las bicicletas tienen ' + @@NUMERORUEDAS.to_s +  ' ruedas'
  
  # Uso del constructor sin argumentos 
#  miBici = Bicicleta.new # Se ejecuta el initialice sin parámetros  
#  puts 'Número de serie de mi bici es  ' + miBici.NUMEROSERIE.to_s # ¿Qué ocurre cómo es que el númeo de serie es distinto del número de bicicletas? corrige el error
#  puts 'Hay '+ Bicicleta.numeroBicicletas.to_s + ' bicicletas'
#  puts 'mi bici tiene ' + miBici.numeroRuedas.to_s + 'ruedas'
#  miBici.hacerRuta('La Mahala',60)
#  puts 'He recorrido ' + miBici.kilometrosRecorridos.to_s +  ' km'
#  miBici.color="roja"
#  puts "Mi bici es "+miBici.color+" tiene "+miBici.numeroRuedas.to_s+" ruedas y ha recorrido "+miBici.kilometrosRecorridos.to_s
#  @color = "blanca"
#  puts "el color de mi bici es #{@color}" # ¿Qué ocurre con la variable color?
#  puts "Mi bici es "+miBici.color+" tiene "+miBici.numeroRuedas.to_s+" ruedas y ha recorrido "+miBici.kilometrosRecorridos.to_s
  
  # Uso del constructor sin argumentos.
  # Corrige los errores de ejecución 
#    tuBici = Bicicleta.new("negra", 10)
#    puts 'número de bicicletas construidas ' + tuBici.numeroBicicletas # Método de instancia del objeto clase: no puede ser llamado desde una instancia
#    puts tuBici.desplazarse("El Veleta") # Modifica initialice para muestre el color en lugar de las marchas
#    puts "La bici tiene " + tuBici.numeroRuedas.to_s + " ruedas"
#    tuBici.incrementarKilometros(70) # método de instancia privado, sólo puede ser referenciado en otros métodos de instancia 
  
  end # fin de la clase
  
# Prueba de la clase Bicicleta desde el mismo módulo
  
    puts 'Hay ' + Bicicleta.numeroBicicletas.to_s + ' bicicletas'  
    Bicicleta.incrementarNumeroBicicletas
    puts 'Hay '+ Bicicleta.numeroBicicletas.to_s + ' bicicletas'
    puts 'Las bicicletas tienen ' + @@NUMERORUEDAS.to_s +  ' ruedas'  #¿Qué ocurre?
    tuBici = Bicicleta.new("negra", 10)
    puts tuBici.desplazarse("El Veleta") 
    puts "La bici tiene " + tuBici.numeroRuedas.to_s + " ruedas"
  
  module PruebaBicicleta0  #submódulo de UnModulo
   # Prueba de la clase Bicicleta desde un submódulo de aquel en el que se define la clase Bicicleta
  # elimina los posibles errores
  
#    puts 'Hay ' + Bicicleta.numeroBicicletas.to_s + ' bicicletas'  
#    Bicicleta.incrementarNumeroBicicletas
#    puts 'Hay '+ Bicicleta.numeroBicicletas.to_s + ' bicicletas'
#    puts 'Las bicicletas tienen ' + @@NUMERORUEDAS.to_s +  ' ruedas'  #¿Qué ocurre?
#    tuBici = Bicicleta.new("negra", 10)
#    puts tuBici.desplazarse("El Veleta") 
#    puts "La bici tiene " + tuBici.numeroRuedas.to_s + " ruedas"

      # incluye todo el código que consideres para probar el ámbito y la visibilidad de las variables y métodos
    
  end # fin del módulo PruebaBicicleta0

end # fin del módulo UnModulo
#
#
  # Prueba de la clase Bicicleta desde un módulo externo al módulo en el que se define
module PruebaBicicleta1 
  # Una forma: indicando el módulo y la clase)
#    puts 'hay ' + UnModulo::Bicicleta.numeroBicicletas.to_s + ' bicicletas'  
#    UnModulo::Bicicleta.incrementarNumeroBicicletas
#    puts 'hay '+ UnModulo::Bicicleta.numeroBicicletas.to_s + ' bicicletas'
#    tuBici = UnModulo::Bicicleta.new("negra", 10)
#    puts tuBici.desplazarse("El Veleta") # modifica initialice para que este resultado sea el correcto
#    puts "la bici tiene " + tuBici.numeroRuedas.to_s + " ruedas"
    
  #Otra forma: incluyendo el módulo
  # Comenta el trozo de código anterior y descomenta el siguiente:
#    include UnModulo
#    puts 'hay ' + Bicicleta.numeroBicicletas.to_s + ' bicicletas'  
#    Bicicleta.incrementarNumeroBicicletas
#    puts 'hay '+ Bicicleta.numeroBicicletas.to_s + ' bicicletas'
#    tuBici = Bicicleta.new("negra", 10)
#    puts tuBici.desplazarse("El Veleta") # modifica initialice para que este resultado sea el correcto
#    puts "la bici tiene " + tuBici.numeroRuedas.to_s + " ruedas"
  #
    # incluye todo el código que consideres para probar el ámbito y la visibilidad de las variables y métodos

end # fin del modulo PruebaBicicleta1