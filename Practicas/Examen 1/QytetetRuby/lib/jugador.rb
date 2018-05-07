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
  
  def tengo_propiedades
    
  end
  
  def actualizar_posicion(casilla)
    
  end
  
  def comprar_titulo
    
  end
  
  def devolver_carta_libertad
    
  end
  
  def ir_a_carcel(casilla)
   
  end
  
  def modificar_saldo(cantidad)
    
  end
  
  def obtener_capital
    
  end
  
  def obtener_propiedades_hipotecadas(hipotecada)
    
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
  
  def puedo_vender_propiedad(casilla)
    
  end
  
  def tengo_carta_libertad
    
  end
  
  def vender_propiedades(casilla)
    
  end

  
  #METODOS PRIVADOS
  
  private
  def cuantas_casas_hoteles_tengo()
    
  end
  
  def eliminar_de_mis_propiedades(casilla)
    
  end
  
  def es_de_mi_propiedad(casilla)
    
  end
  
  def tengo_saldo(cantidad)
    
  end
  
end #clase

end#modulo
