# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require "singleton"

require_relative "unidad_monetaria"
require_relative "tipo_moneda"
require_relative "tipo_billete"

module ModeloQytetet
  
  class Banca
    
    include Singleton
    
    attr_accessor :caja
    
    private_class_method :new
    
    def initialize
      @caja = Array.new
      inicializar_caja
    end
    
    private
    def inicializar_caja
      
      #Crear Monedas
      m1 = UnidadMonetaria.crear_unidad_mon(TipoMoneda::EURO_ESP,1)
      m2 = UnidadMonetaria.crear_unidad_mon(TipoMoneda::EURO_IT,1)
      m3 = UnidadMonetaria.crear_unidad_mon(TipoMoneda::EUROS_2_ESP,2)
      m4 = UnidadMonetaria.crear_unidad_mon(TipoMoneda::EURO_IT,1)
      m5 = UnidadMonetaria.crear_unidad_mon(TipoMoneda::EURO_ESP,1)
      
      #Crear Billetes
      b1 = UnidadMonetaria.crear_unidad_bill(TipoBillete::EUROS_5_ESP,5)
      b2 = UnidadMonetaria.crear_unidad_bill(TipoBillete::EUROS_5_ESP,5)
      b3 = UnidadMonetaria.crear_unidad_bill(TipoBillete::EUROS_100_FR,100)
      b4 = UnidadMonetaria.crear_unidad_bill(TipoBillete::EUROS_100_FR,100)
      b5 = UnidadMonetaria.crear_unidad_bill(TipoBillete::EUROS_5_ESP,5)
      
      #Guardar monedas en la caja
      @caja<<m1
      @caja<<m2
      @caja<<m3
      @caja<<m4
      @caja<<m5
      
      #Guardar billetes en la caja
      @caja<<b1
      @caja<<b2
      @caja<<b3
      @caja<<b4
      @caja<<b5
      
    end
    
#    public
#    def to_s
#      result=""
#      @banca.each do |b|
#         result=result+b.to_s
#        end
#        result
#    end

  end
end
