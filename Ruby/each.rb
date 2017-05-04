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
