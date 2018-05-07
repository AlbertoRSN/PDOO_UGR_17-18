#encoding: utf-8

  require_relative 'direccion.rb'
 
  begin
    d1= Direccion.new("Calle del Agua", 58, "18888", "Murcia")
    puts "constructor usado con valores correctos"
    d1.codigoPostal("123")
    puts "código incorrecto"
  rescue Exception => e
    puts e.message
  end 
   