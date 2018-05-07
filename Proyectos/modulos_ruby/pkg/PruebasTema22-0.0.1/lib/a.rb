# To change this template, choose Tools | Templates
# and open the template in the editor.
#require_relative 'e'
require_relative 'b'
require_relative 'c'
module X  
 module Y   
   module U
     include X::Z::V
    class A 
      def initialize 
        b=B.new
        c = C.new
        puts "sin problemas en A"
      end
    end
   end
 end
end



 