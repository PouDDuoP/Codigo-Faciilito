# IO => Input / Output

nombre = "Kevin"

print "Hola #{ nombre }" 
# print agrega salto de linea \n

# get hace una pausa hata recibir entrada por el usuario
nombre = gets

puts "Hola #{ nombre }  \n"
# puts no agrega salto de linea \n

# vamos a contar la cantidad de caracteres de la cadena
# nota el string agrega por defecto un salto de linea \n
puts "Hola #{ nombre.length }"

nombre = nombre.chomp
# imprimimos el nombre sin el salto de linea \n ya que chomp elimina el ultimo caracter
puts "Hola #{ nombre.length } con el metodo chomp"