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
    propiedades.empty
  end
  
  def actualizar_posicion(casilla)
    
    tiene_propietario = false
    @casillaActual = casilla
    
    if(casilla.numeroCasilla < @casilla_actual.numeroCasilla)
      modificar_saldo(Qytetet.SALDO_SALIDA)
    end
    
    if(casilla.soy_edificable)
      tiene_propietario = casilla.tengo_propietario
      
      if(tiene_propietario)
        @encarcelado = casilla.propietario_encarcelado
        
        if(@encarcelado)
          coste_alquiler = casilla.cobrar_alquiler
          modificar_saldo(-coste_alquiler)
        end
      end
    else
      if(casilla.tipo == TipoCasilla::IMPUESTO)
        coste = casilla.coste
        modificar_saldo(-coste)
      end
    end
    
  end
  
  def comprar_titulo
    puedo_comprar = false
    if(@casilla_actual.soy_edificable)
      tengo_propietario = @casilla_actual.tengo_propietario
      if(!tengo_propietario)
        coste_compra = @casilla_actual.coste
        if(coste_compra <=@saldo)
          @casilla_actual.titulo = @casilla_actual.asignar_propietario
          @propiedades.add(@casilla_actual.titulo)
          modificar_saldo(-coste_compra)
          puedo_comprar = true
        end
      end
    end
    puedo_comprar
  end
  
  #Devuelve la carta Sorpresa cartaLibertad, pues el jugador ya ha hecho uso de ella. Esto implica que el jugador se queda sin esa carta.
  def devolver_carta_libertad
    carta = @carta_libertad;
    @carta_libertad = nil;
    carta;
  end
  
  def ir_a_carcel(casilla_carcel)
   @casilla_actual = casilla_carcel
   @encarcelado = true
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
    capitaltotal = @saldo
    costetotal = 0
    numcasasyhoteles = cuantas_casas_hoteles_tengo
    
        @propiedades.each do |p|
            costetotal += p.casilla.coste 
            capitaltotal = costetotal + (numcasasyhoteles * p.casilla.precio_edificar);
            if(p.hipotecada)
                capitaltotal -= p.hipotecaBase
            end
        end 
    capitaltotal;
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
    numero_total = cuantas_casa_hoteles_tengo
    modificar_saldo(numero_total*cantidad)
  end
  
  def pagar_libertad(cantidad)
    tengo_s = tengo_saldo(cantidad)
    
    if(tengo_s)
      modificar_saldo(cantidad)
    end
    
    tengo_s
  end
  
  def puedo_edificar_casa(casilla)
    es_mia = es_de_mi_propiedad(casilla)
    puedo_edificar = false
    
    if(es_mia)
      coste_edificar_casa = casilla.get_precio_edificar
      tengo_saldo = tengo_saldo(coste_edificar_casa)
    end
    
    if(es_mia && tengo_saldo)
      puedo_edificar = true
    end
    
    puedo_edificar
  end
  
  def puedo_edificar_hotel(casilla)
     es_mia = es_de_mi_propiedad(casilla)
    puedo_edificar = false
    
    if(es_mia)
      coste_edificar_hotel = casilla.get_precio_edificar
      tengo_saldo = tengo_saldo(coste_edificar_hotel)
    end
    
    if(es_mia && tengo_saldo)
      puedo_edificar = true
    end
    
    puedo_edificar
  end
  
  def puedo_hipotecar(casilla)
    es_mia = es_de_mi_propiedad(casilla)
    es_mia
  end

  def puedo_pagar_hipoteca(casilla)
    
  end
  
  #Cierto sólo si la casilla es de la propiedad de ese jugador y no la tiene hipotecada.
  def puedo_vender_propiedad(casilla)
    puedo_vender = false
    es_mia = es_de_mi_propiedad(casilla)
    hipot = casilla.esta_hipotecada
    if(es_mia && hipot)
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
  
  def vender_propiedad(casilla)
    precio_venta = casilla.vender_titulo
    modificar_saldo(precio_venta)
    @propiedades.delete(casilla)
  end

  
  #METODOS PRIVADOS
  
  private
  #DEVUELVE EL TOTAL DE CASA Y HOTELES QUE TIENE ESE JUGADOR EN SUS PROPIEDADES
  def cuantas_casas_hoteles_tengo
    total = 0
    
    @propiedades.each do |p|
      total = total + (p.casilla.numHoteles + p.casilla.numCasas)
    end
    
    total
    
  end
  
  #ELIMINA EL TITULO PROPIEDAD DE ESA CASILLA DE SU LISTA DE PROPIEDADES
  def eliminar_de_mis_propiedades(casilla) 
    @propiedades.remove(casilla.titulo)
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
