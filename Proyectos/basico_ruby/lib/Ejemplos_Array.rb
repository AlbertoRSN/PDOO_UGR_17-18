#encoding: utf-8
##  Proceder como se ha indicado main.rb
#
##------------------------------------------------------------------------
##-------------- Ejemplos de uso de Arrays en Ruby
##-------------------------------------------------------------------------
#
##-------1. Tres formas de crear un Array y añadirle elementos------------------
#
#letras_numeros=Array.new
#letras_numeros<<3
#letras_numeros<<'hola'
#letras_numeros<<3
#letras_numeros<<'x'
#puts letras_numeros.inspect

#a1 = Array.new(5,'a')
#a2 = Array.new 3
#a3 = Array.new 5, 'a'
#a4 = Array.new [1,30,'b']
#puts a1.inspect
#puts a2.inspect
#puts a3.inspect
#puts a4.inspect

#numeros=[5, 6, 7, 8]
#puts (numeros+[9, 10]).inspect

## -------------------- 2. Arrays anidados---------------------------------------
#
#letras=['a','b','c','d', 'e', 'f']
#letras << ['g', 'h']
#puts letras.inspect
#puts letras.size
#puts letras[0].inspect
#puts letras[6].inspect
#puts letras[6].size
#letras[0]='o'
#letras[6][1]='u'
#puts letras.inspect
#
#puts letras[2..4].inspect
#puts letras.slice!(2..4).inspect

##--------3. Indicando que un Array es estático (estático -->inmutable)------
## ==== corregir el código para eliminar el error de ejecución =======
#
#a = [ "a", 3, "c" ]    
#a.freeze    
#a << "z"
#puts a.inspect

##---------4. Recorriendo un Array-----------------------------------------------
#
#vocales=['a', 'e', 'i', 'o', 'u']
#vocales.each {|v| v.upcase!}
#puts vocales.inspect

##------- 5.sintaxis cuando hay varias instrucciones: do..end en lugar de {} -----
#
#vocales=['a', 'e', 'i', 'o', 'u']
#vocales.each do |v| v<<v    
#  puts v.inspect 
#end

##-------- 6. mas formas de recorrer un Array. Probarlas por separado ---------------
#
#vocales=['a', 'e', 'i', 'o', 'u']
#vocales.length.times do 
#  |i| vocales[i].upcase!
#end
#puts vocales.inspect

#vocales=['a', 'e', 'i', 'o', 'u']
#vocales.each_with_index do |v, i| puts "En #{i}: #{v.upcase!}"
#end

#vocales=['a', 'e', 'i', 'o', 'u']
#0.upto(vocales.size-1) do |i| vocales[i].upcase!
#end
#puts vocales.inspect  

##---------7. Ordenando un Array ------------------------------------------------
#
#varios=['e', 'a', 'i', 'o', 'i', 'u']
#puts varios.sort.inspect   # sort ordena los elementos si son de la misma clase y hay relación de orden entre ellos

##-------- 8. otro ejemplo de cómo hacer una ordenación -------------------------
#
#num=[1, '3', 5, 2, '4']
#num.sort! {|a,b| a.to_i <=> b.to_i}  # El operador <=> comprueba si hay una relación de orden entre elementos, dos a dos.
#puts num.inspect

##---------9. Buscando en un Array ----------------------------------------------
#
#num=[1, '3', 5, 2, '4']
#puts num.find {|x| x.to_i>4}  # devuelve el primero que cumpla una condición


 




