#encoding: utf-8

module ModeloQytetet

class Jugador
    attr_accessor :encarcelado
    attr_accessor :nombre
    attr_accessor :saldo
    
    #Atributo de la clase sorpresa
    attr_accessor :carta_libertad
    
    #Atributo de la clase Casilla
    attr_accessor :casilla_actual
    
    #Atributo de la clase TituloPropiedad
    attr_accessor :propiedades
    
 
    
  def initialize(nombre)
    @encarcelado = false
    @nombre = nombre
    @saldo = 7500
    @propiedades = Array.new
    @casilla_actual = nil
    @carta_libertad = nil
  end
  
  #----------------------TO_S----------------------

   def to_s()
      "\n       Nombre: #{@nombre} 
       Encarcelado: #{@encarcelado} 
       Saldo: #{@saldo} 
       Carta Libertad: #{@cartaLibertad} 
       Casilla Actual: #{@casillaActual}
      "
    end
  
  #----------------------METODOS----------------------
  
   #DEVUELVE VERDADERI CUANDO EL JUGADOR ES PROPIETARIO DE ALGUN TITULO PROPIEDAD Y FALSO EN CASO CONTRARIO
  def tengo_propiedades
    tengo = false
    @propiedades.each do |p|
      if(this == p.propietario)
        tengo = true
      end
    end
    tengo
    
    #if(@propiedades != nil)
  end
  
  def actualizar_posicion(casilla)
    
  end
  
  def comprar_titulo
    
  end
  
  #Devuelve la carta Sorpresa cartaLibertad, pues el jugador ya ha hecho uso de ella. Esto implica que el jugador se queda sin esa carta.
  def devolver_carta_libertad
    
  end
  
  def ir_a_carcel(casilla)
   
  end
  
  #AÑADE AL SALDO LA CANTIDAD DEL ARGUMENTO, SI ES NEGATIVO, SE RESTA.
  def modificar_saldo(cantidad)  
    if(cantidad > 0)
      @saldo = @saldo + cantidad
    else
      @saldo = @saldo - cantidad
    end
  end
  
  #Devuelve el capital del que dispone el jugador, que es igual a su saldo más la suma de los valores de todas sus propiedades. El valor de una propiedad es la suma de su coste más el número de casas y hoteles que haya construidos por el precio de edificación. Si la propiedad estuviese hipotecada, se le restará el valor de la hipoteca base.
  def obtener_capital
    
  end
  
  #DEVUELTE LOS TITULOS PROPIEDAD DE JUGADORACTUAL
  def obtener_propiedades_hipotecadas(hipotecada)
    hipotecadas = Array.new
    @propiedades.each do |p|
      if(p.hipotecada == hipotecada)
        hipotecadas << p
      end
    end
    hipotecadas 
  end
  
  def pagar_cobrar_por_casa_y_hotel(cantidad)
    
  end
  
  def pagar_libertad(cantidad)
    
  end
  
  def puedo_edificar_casa(casilla)
    
  end
  
  def puedo_edificar_hotel(casilla)
    
  end
  
  def puedo_hipotecar(casilla)
    
  end

  def puedo_pagar_hipoteca(casilla)
    
  end
  
  #Cierto sólo si la casilla es de la propiedad de ese jugador y no la tiene hipotecada.
  def puedo_vender_propiedad(casilla)
    pruedo_vender = false
    if(es_de_mi_propiedad(casilla) == true && casilla.esta_hipotecada == false)
      puedo_vender = true
    end
    puedo_vender
  end
  
  #CIERTO SOLO SI LA CARTALIBERTAD NO ES NULA
  def tengo_carta_libertad
    libertad = false
    
    if(@carta_libertad != nil)
      libertad = true
    end
    
    libertad
  end
  
  def vender_propiedades(casilla)
    
  end

  
  #METODOS PRIVADOS
  
  private
  #DEVUELVE EL TOTAL DE CASA Y HOTELES QUE TIENE ESE JUGADOR EN SUS PROPIEDADES
  def cuantas_casas_hoteles_tengo()
    total = 0
    
    @propiedades.each do |p|
      total = total + (p.casilla.numHoteles + p.casilla.numCasas)
    end
    
    total
    
  end
  
  #ELIMINA EL TITULO PROPIEDAD DE ESA CASILLA DE SU LISTA DE PROPIEDADES
  def eliminar_de_mis_propiedades(casilla) 
    @propiedades.each do |p|
      if(p == casilla.tipo)
        @propiedades.remove_at(index(p))
      end
    end
  end
  
  #CIERTO SI EL JUGADOR TIENE ENTRE SUS PROPIEDADES EL TITULO DE PROPIEDAD DE ESA CASILLA
  def es_de_mi_propiedad(casilla)
    es = false
    @propiedades.each do |p|
      if(p.casilla == casilla)
        es = true
      end
    es
    end
  end
  
  def tengo_saldo(cantidad)
    tengo = false
    if(@saldo >= cantidad)
      tengo = true
    end
    tengo
  end
  
end #clase

end#modulo
