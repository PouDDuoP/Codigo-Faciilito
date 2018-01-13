# each : es un iterador para arreglos que ya cubrimos y hash que vamos a ver
nota = %w[10 9 8 7 6 5 8 9 6 10]

# print nota
# puts nota # el puts siempre imprime con un \n un salto de linea

# promedio de las notas

suma = 0
# el metodo each_with_index es usado para saber la posicion en que nos encontramos dentro del arreglo
nota.each_with_index do |nota,posicion| #es agregada posicion porque each_with_index agrega un segundo parametro
  # puts "en la posicion: #{posicion} tu nota es: #{nota}"
  suma += nota.to_f
end

puts "el promedio de tus alificaciones es #{suma / nota.length}"
#length y size es un metodo para identificar la cantidad de elementos que tiene un arreglo

puts nota * 2

#el arreglo es duplicado

puts nota * " - "

# los arreglos tambien pueden ser multilicados por un string y el resultado generado es los elementos del arreglo separados por un string
# a esto se le dice que realiza un ".join" y el join lo que hace es cambiar un arreglo en una cadena

puts nota.join("")
# puts nota.join("").class.name

# si imprimimos el tipo de dato con los metodos ".class.name" podremos visualizar que es un string 

clasificaiciones = [10,9,8,5,3,8,10,7]

puts clasificaiciones.sort.reverse

# .sort los organizaria de forma ascendente 
# .sort.reverse los organizariamos de forma descendente ya que .reverse agarra cualquier arreglo y lo invierte

puts clasificaiciones.include?(10) 

# .include?() es utilizado para validar si existe el elemento en el arreglo

puts clasificaiciones.first

# .first retorna el primer elemento dentro del arreglo 

puts clasificaiciones.last

# .last retorna el ultimo elemento dentro del arreglo

puts clasificaiciones.uniq

# .uniq retorna los elementos del arreglo sin repetirlos, es decir que de existir dos iguales solo mostrara uno de cada uno

puts clasificaiciones.sample

# .sample retorna un elemento aletorio del arreglo