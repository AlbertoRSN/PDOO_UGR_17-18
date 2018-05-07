#encoding: UTF-8

module El_Club
  class Bicicleta
  
     attr_accessor  :color; # variable de instancia de la que se genera de forma automática el consultor y modificador de color y público
     attr_reader    :marcha, :NUMEROSERIE, :kilometrosRecorridos; # variables de instancia de las que se genera de forma automática el consultor de estos atributos y público 
  
    @@NumeroBicicletas=0  # Variable de ámbito de clase, compartida por la clase, el módulo y submodulos en el que está definida
    @@NUMERORUEDAS=2      # Igual que la anterior
 
    def initialize(*args) # inicializador de los atributos 
      case args.size
        when 0
          @marcha=0
          @color="gris"
        when 2
          @marcha, @color =args
      end
      @kilometrosRecorridos= 0
      Bicicleta.incrementarNumeroBicicletas;
      @NUMEROSERIE=@@NumeroBicicletas+1  
    end

  # consultores
  def self.numeroBicicletas  # Método de instancia de clase
    @@NumeroBicicletas
  end 
  
  
  def self.incrementarNumeroBicicletas # Método de clase
    @@NumeroBicicletas += 1
  end 
 
  def numeroRuedas # Método de instancia que accede a variable de ámbito de clase
    @@NUMERORUEDAS;
    
  end     
 
  def hacerRuta(lugar, km)
     desplazarse(lugar)      
     incrementarKilometros(km)   # llamando a un método private no puede usarse self
     
  end  

  def desplazarse(lugar)
   puts "Voy con mi bicicleta #{@color} hasta #{lugar}"
  end  
  
  def to_s
    "el color de mi bici es #{@color} y tiene #{@marcha} marchas"
  end
  
  private  # los siguientes metodos son privados     
   
  def incrementarKilometros(km)
       @kilometrosRecorridos += km
      
  end 
   
  end # fin de la clase
  

end # fin del módulo UnModulo