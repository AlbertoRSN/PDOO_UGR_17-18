#encoding: utf-8

require "singleton"

module ModeloQytetet
  
  
  class Dado
    include Singleton
    #PARA ACCEDER A LA ISNTANCIA DE LA CLASE DADO EN OTRA CLASE -> dado = Dado.instance
    
    def tirar
    end
    
    def initialize
    end
    
  end
end


