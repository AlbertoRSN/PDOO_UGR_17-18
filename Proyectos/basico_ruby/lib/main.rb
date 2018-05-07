#encoding: UTF-8
=begin    
  ------------------------------- Explicación ------------------------------
   Cada bloque a probar está identificado por un número.
   Las líneas de código a probar tienen al comienzo un único caracter(#) de comentario.
   Las líneas de comentario tienen al comienzo dos caracteres de comentario
 Procede de la siguiente forma:
 -Quita los comentarios de las líneas de código del bloque correspondiente,
   para ello selecciona el trozo de código que se quiere probar y en el menú
   principal: fuente(Source)/Alternar Comentar(Toggle comment).
 -Prueba el trozo de código con MAY-F6. Modifica el código todo lo que quieras.
 -Una vez probado y entendido coloca de nuevo los comentarios,para ello seleccionar
   el trozo de código que se quiere comentar y en el menu principal:
    fuente(Source)/Alternar Comentar(Toggle comment)
 -Procede de la misma forma con todos los bloques de código.
------------------------------------------------------------------------------
=end  
  
## Comienza con estos ejemplos simples
##
##------------------1. Introducción de datos por teclado: gets.chomp, y mostrar: puts print
##  
## Observa la diferencia entre puts y print 
#
#puts "Escribe tu nombre"  
#nombre = gets.chomp  
#puts "Encantado de conocerte #{nombre}", " espero que lo pases bien"
#puts nombre
#print "Mucho gusto #{nombre}", " encantado en conocerte"
#print nombre

##------------------------------------------------------------------------------
## Continúa con los siguientes archivos, en este orden y con la sistemática 
## indicada anteriormente: 
##
## - Ejemplos_Iniciales
## - Ejemplos_Control
## - Ejemplos_Array
## - Ejemplos_Hash
## - Persona
## - Persona2
##------------------------------------------------------------------------------

## Termina con estos ejemplos
#
##--------------------1. Uso de una función/método------------------------------------

#def saludar0(var)
#  puts "Hola soy saludar0, mi valor es: #{var}"
#end
#def saludar1(var=0,var1)
#  puts "hola soy saludar1, mi valor es: #{var} y #{var1}"
#end
#def saludar2(*var)
#  print "hola soy saludar 2, mi valor es: "  
#  for i in var
#    print "#{i.to_s} "
#  end
#  puts "-----"
#end
#
#saludar0(8)
#saludar1(8,8)
#saludar1(7)
#saludar2(8,8)
#saludar2(5,6,7,9)


##--------------------2. Constantes: primera letra mayuscula -------------------
#Const2='a' 
#puts Const2.inspect
#Const2='x'  # esto supone un aviso y no un error.
#puts Const2.inspect
