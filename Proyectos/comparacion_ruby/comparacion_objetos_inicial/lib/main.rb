#encoding: utf-8

  require_relative 'direccion.rb'
  require_relative 'persona.rb'
  
  d1= Direccion.new("Calle del Agua", 58, "18888", "Murcia")

  p1 = Persona.new("Juan", 30, d1)
  p2 = p1
  p3 = Persona.new("Juan",30,d1)
  
  puts "p1 es idéntico (==) a p2 : #{p1 == p2} "   # Comparaciones de Identidad
  puts "p1 es idéntico (==) a p3 : #{p1 == p3} "
  puts "p2 es idéntico (==) a p3 : #{p2 == p3} "
  puts "==============================================="
  puts "p1 es idéntico (equal?) a p2 : #{p1.equal?(p2)} "  # Comparaciones de Identidad
  puts "p1 es idéntico (equal?) a p3 : #{p1.equal?(p3)} "
  puts "p2 es idéntico (equal?) a p3 : #{p2.equal?(p3)} "
  puts "==============================================="
  puts "p1 es idéntico (eql?) a p2 : #{p1.eql?(p2)} " # Comparaciones de Hash/Valores
  puts "p1 es idéntico (eql?) a p3 : #{p1.eql?(p3)} "
  puts "p2 es idéntico (eql?) a p3 : #{p2.eql?(p3)} "
 