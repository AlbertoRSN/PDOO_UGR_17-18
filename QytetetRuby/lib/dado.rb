# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require "singleton"

module ModeloQytetet
  class Dado
    include singleton
    #PARA ACCEDER A LA ISNTANCIA DE LA CLASE DADO EN OTRA CLASE -> dado = Dado.instance
    
    def tirar
    end
    
    def initialize
    end
    
  end
end


