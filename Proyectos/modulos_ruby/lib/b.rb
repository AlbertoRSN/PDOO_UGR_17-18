
 
require_relative 'e'
require_relative 'c'
require_relative 'f'
require_relative 'd'
module X
  module Z
   module V
    class B
      def initialize
        F.new
        D.new
        E.new
        X::Y::C.new  
        X::Y::U::A
        puts 'inicializador de b'        
      end
    end
   end
  end
end
X::Z::V::B.new