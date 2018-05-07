#encoding: utf-8 

#Ejemplo en Ruby que ilustra la creación de varios constructores en una clase  
# SEGUNDA FORMA

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
  
  #Métodos de instancia de clase que son los nuevos constructores

  def Test.newAB(a,b)  
       new(a,b,nil,nil) # entrar con nil no es una buena opción, habría que entrar con los valores.  
  end
  
  def self.newCD(c,d)
       new(nil,nil,c,d)
  end 
  
  #Anula el método constructor new para que no podamos usarlo tal cual  
  private_class_method :new
  
end

#Prueba

#    test= Test.new(1,2,3,4)
#    test= Test.new    
    test= Test.newAB(1,2)
    puts test
    puts test.object_id
    test= Test.newCD(3,4)
    puts test   
    puts test.object_id


# Comentar la líneas de código con errores y volver a probar