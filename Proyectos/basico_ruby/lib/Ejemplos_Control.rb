#encoding: utf-8
##  Proceder como se ha indicado main.rb
##
##-------------------------------------------------------------------------
##-------------- Ejemplos de uso de instrucciones de control en Ruby
##-------------------------------------------------------------------------


##---------------1. case-------------------------------------------------------
#
#numero=8
#case numero
#    when 1
#        f="uno"
#    when 2
#        f="dos"
#    else
#        f="otro"
#end
#puts f

##------------2. if y else------------------------------------------------------
#
#numero =77
#if numero<8
#  puts "menor"
#elseif numero=8
#    puts "igual"
#else
#    puts "mayor"
#end

##-------------3. otra sintaxis para if----------------------------------------
#
#numero =77
#numero<8 ?  e="menor" : e="mayor o igual"
#puts e

 ## -------------4. unless, lo contrario de if -------------------------------
 #
# numero=10 
# unless numero<8 then 
#   e='menor'
# else
#   e='mayor'
# end
# puts e

###------------5.1. bucles: each--------------------------------------------------
#
## Tabla de multiplicar de un número#  
## 
#puts "tabla de multiplicar del ? "
#y = gets.chomp  # y se recoge como un string
#puts "tabla del #{y}"
#(1..10).each {|i| puts "#{y} X #{i} = #{(y.to_i*i)}"}  
      
## nota: (1..10) es un rango
 
##------------5.2. bucles: while--------------------------------------------
#
##  Mismo ejemplo
# 
#puts "tabla de multiplicar del? "
#y = gets.chomp.to_i  # se convierte a int para trabajar con él
#i=1
#while i<11
#  puts "#{y} X #{i} = #{y*i}"
#  i+=1
#end

##---------------5.3. bucles: times do ---------------------------------------
#
#puts "tabla de multiplicar del? "
#y = gets.chomp.to_i
#i=10 
#i.times do 
#  puts  "#{y} X #{i} = #{y*i}"
# end

#
## ¿Qué ocurre? soluciónalo, sin cambiar la estructura repetitiva: n.times do...end


##-------------5.4. bucles: upto do -------------------------------------------
#
#puts "tabla de multiplicar del? "
#y = gets.chomp.to_i
#i=1
#1.upto 10 do 
#  puts "#{y} X #{i} = #{y*i}"
#  i+=1
#end

##--------------5.5- bucles: until --------------------------------------------
#
#puts "tabla de multiplicar del? "
#y = gets.chomp.to_i
#i=1
#until i>10
#  puts  "#{y} X #{i} = #{y*i}"
#  i+=1
#end

##----------------5.6. bucles:for in -----------------------------------------
#
#puts "tabla de multiplicar del? "
#y = gets.chomp.to_i
#valores = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#for i in valores
#  puts "#{y} X #{i} = #{y*i}"
#end

 