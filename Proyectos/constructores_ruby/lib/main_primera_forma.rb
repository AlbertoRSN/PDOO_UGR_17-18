#encoding: utf-8 
#
#Ejemplo en Ruby que ilustra la creación de varios constructores en una clase  
# PRIMERA FORMA

class Test

  attr_reader :a,:b,:c,:d

  def initialize(a,b,c,d)
    @a=a
    @b=b
    @c=c
    @d=d
  end  
  
  def to_s
    "Objeto de test #{@a},#{@b},#{@c},#{@d}"
  end 
  
  
  #Métodos de clase que son los nuevos constructores

  def self.newAB(a,b)  
    	# asigna memoria para el objeto
      nuevoObj=allocate      
      # inicializa el objeto, invocando al método initialize
      nuevoObj.send(:initialize,a,b,nil,nil)     
      #devuelve el objeto creado e inicializado
      nuevoObj 
  end
  
  def self.newCD(c,d)
      newObj=allocate
      newObj.send(:initialize, nil,nil,c,d)
      newObj
  end    

  
end

#Eliminamos el metodo new de la clase 
#Anula el método constructor new para que no podamos usarlo tal cual
Test.instance_eval { undef :new }  

#Pruebas:

    test= Test.new(1,2,3,4)
    test= Test.new    
    test= Test.newAB(1,2)
    puts test
    puts test.object_id
    test= Test.newCD(3,4)
    puts test   
    puts test.object_id

# Comentar la líneas de código con errores y volver a probar