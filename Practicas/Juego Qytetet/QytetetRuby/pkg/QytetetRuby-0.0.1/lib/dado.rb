#encoding: utf-8

require "singleton"

module ModeloQytetet
  
  
  class Dado
    include Singleton
    #PARA ACCEDER A LA ISNTANCIA DE LA CLASE DADO EN OTRA CLASE -> dado = Dado.instance
    
    def tirar
      rand(6) + 1 #Aleatorio entre 0-5 y le sumo uno para que salga el 6 si es 5 o 1 si es 0.
    end
    
    def initialize
    end
    
  end
end


