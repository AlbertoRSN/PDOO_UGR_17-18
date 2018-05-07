# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require_relative "banca"
require_relative "tipo_moneda"
require_relative "tipo_billete"

module ModeloQytetet
  
  class UnidadMonetaria
  
     #Consultor atributo valor
     attr_reader :valor
     
    #Consultores para los atributos de referencia. No modificador ya que no dice nada de modificadores
     attr_reader :tipo_moneda
     attr_reader :tipo_billete
    
    private_class_method :new
    
    def initialize(tipo_moneda, tipo_billete, valor)
      @tipo_moneda = tipo_moneda
      @tipo_billete = tipo_billete
      @valor = valor
    end
    
    #Constructor para moneda
    def self.crear_unidad_mon(tipo_moneda, valor)
      new(tipo_moneda,nil,valor)
    end
    
    #Constructor para billete
    def self.crear_unidad_bill(tipo_billete, valor)
      new(nil,tipo_billete,valor)
    end
    
    
    def to_s
      if (tipo_moneda != nil)
         "\tBillete tipo: #{@tipo_billete}
         Valor: #{@valor}"
      end
      else
        "\tMoneda tipo: #{@tipo_moneda}
         Valor: #{@valor}"
      
    end
    
  end
end
