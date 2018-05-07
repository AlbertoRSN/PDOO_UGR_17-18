#encoding: utf-8
##  Proceder como se ha indicado main.rb. Ejecuta solo este fichero May+F6
##------------------------------------------------------------------------
##-------------- Ejemplos de uso de números, cadenas de caracteres y fechas en Ruby
##------------------------------------------------------------------------

##---------1. Primeras pruebas con números y cadenas de caracteres------
## Corrige el error de compilación
#
#puts "Hello World"
#a='Buenos días'
#puts a
#puts "Mi valor es:  #{a}"
#puts "Mi valor es: " + a 
#a= 7
#puts a
#puts "Mi valor es: ", a  ## Observa que la "," supone un salto de línea
#puts "Mi valor es:  #{a}"
#puts "Mi valor es " + a
#puts "Mi valor es: " + a.to_s 

##--------2. Envío de mensajes a cadenas de caracteres
#
#b="hola"
#puts b.length
#puts b.size
#puts b+" amigo"
#puts b.include? "o"
#puts b.upcase!
#puts b.capitalize
#puts b.casecmp("Hola")
#puts b << " amigo mío"
#puts b.reverse
## prueba las demás operaciones con los String
#
## Investiga algunas de las cosas que podemos hacer con cadenas de caracteres
## en http://www.tutorialspoint.com/ruby/ruby_strings.htm

##----------3. Envío de mensajes a números -------------------------------------
#
#a=7
#puts a+5
#puts a+8.75
#puts a.odd?
#puts a.integer?
#puts a.succ
#puts a.to_s
#puts a.to_f
#puts a.integer?
#puts a.truncate
#puts a.integer?
#
## Investiga algunas otras operaciones que se pueden hacer con los números.

##----------4.1. Uso de condicionales ------------------------------------------
## Primero completa para corregir el error de compilación
# 
# 
#a.odd? ? j="impar" : j="par"  ## equivale a sentencia if
#puts "este numero es #{j}"
#

##----------4.2. Uso de condicionales ------------------------------------------
#
#a="765"
#m="soy soy caracter"
#if a =~ /[0-9]+/   ##  expresión regular, indica números del 0 al 9 
#  m= "soy digito"
#end
#puts m  # Plantéate qué pasa y pon letras en lugar de números

## Expresiones regulares en Ruby: http://www.tutorialspoint.com/ruby/ruby_regular_expressions.htm

##----------5. Partes de una cadena---------------------------------------------
#
#t1="hola amigo, ¿qué tal?"
#puts t1[3]
#t2=t1.slice(6,t1.size)
#puts t2
#t3=t1.slice(-8,5)
#puts t3
#puts "yo digo #{t1}"
#
#t4=t1.reverse
#puts t4
#puts t1.split(/\s+/)
#
## Investiga cómo manipular las partes de una cadena

##-----------6. Sustituciones en una cadena ------------------------------------
#
#plan="hola %s y %s"
#puts plan % ["Juan", "Maria"]
#

##-----------7. Recorriendo una cadena, varias formas --------------------------
#
#t1="1A3c9"
#t1.each_char { |cstr|   puts cstr + " = " + "#{cstr.bytes.to_a}"}
#puts "-----------------------"
#t1.each_byte {|x| puts x.chr + " = " + "#{x}"}
#puts "------------------------"
#t1 = "1AA3c9!A"

##-----------8. Buscando en una cadena--------------------------
#
#t1.scan(/[^a-z,0-9]/) {|m| puts m} ## scan, si cumple con el patron lo selecciona
#puts "------------------------"
#t1.scan(/AA*/) { |m| puts m }
#

##-----------9. Rango de cadenas consecutivas ----------------------------------
#
#('aa'..'ag').each{|x| puts x}
#puts "----"
#puts 'aZ'.succ
#puts 'ca75'.succ
#puts 'ca99'.succ
#

##----------10. Uso de case y expresiones regulares -----------------------------
#
#cadena="uuu777"  ## varía la cadena para probar
#case cadena
#  when /^[a-zA-Z]+$/ ## Ver expresiones regulares
#    puts "letras"
#  when /^[0-9]+$/
#    puts "números"
#  else
#    puts "mezcla"
#  end

##-------------11. Tipos de números y conversiones -----------------------------
#
#n=8
#puts n
#puts n.class
#puts n=n**10
#puts n.class
#puts n=59/2
#puts n.class
#puts n=59/2.to_f
#puts n.class
#puts n.to_i
#puts "--------------------"
#puts '247'.to_i
#puts '247'.to_f
#puts '247,5'.to_i
#puts "--------------------"
#puts 1.8 + 0.1
#puts 1.8 + 0.1==1.9
#puts "--------------------"
#puts rand
#puts rand(7)
#puts rand(7)

##------12. Uso de módulos específicos: require ---------------------------------
#
#require 'mathn'  # modulo  que incluye funciones matemáticas
#primos=Prime.take(5) ## Devuelve los 5 primeros números primos
#puts primos

##------13. Uso de fechas ------------------------------------------------------

#require 'date' # modulo que   incluye toda la funcionalidad para manejar fechas
# 
# hoy= Date.today
#print "fecha = ", hoy, "\n" 
#print  "mes = " , hoy.month, "\n" 
#print  "días = " , hoy.day ,  "\n" 
#print  "¿es bisiesto ? " ,  hoy.leap?,  "\n" 
#puts "--------------------------"
#hora= Time.new
#print  "hora = " ,  hora, "\n" 
#print  "año = " , hora.year, "\n" 
#print  "hora = " , hora.hour, "\n" 
#puts "---------------------------"
#puts hora.strftime("%d de %b/%y")

## http://www.elclubdelprogramador.com/2011/10/24/codigo-abierto-representando-caracteres-que-no-se-pueden-imprimir/
 
