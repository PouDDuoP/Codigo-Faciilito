# Bloques en ruby
  # Es un conjunto de sentencias agrupadas, se pueden agrupar utilizando ("do end ó {  }")

# [1,2,3,4,5,6].each do |numero|
# puts numero
# end

puts "-*******------------*******-"
# el arreglo esta imbocando al metodo .each, el metodo esta rcibiendo un argumento que inica en el "do" y finaliza en "end"

# [1,2,3,4,5,6].each { |numero| puts numero}

# cuando utilizar llaves "{}"  y cuando utilizar "do end"
  # si el bloque es de una sola linea de codigo utilizar llaves "{}"
  # si es mas de una utilizar "do end"

# ejemplo quitar los pares
 impares = [1,2,3,4,5,6].select do |numero| # en este caso el metodo select recibe el bloque
   numero % 2 != 0
   # los bloques retornan valores como en este caso .select evalua con numero % 2 != 0 si el elemento se queda o se va
   # false
   # ejemplo: si le asignamos false retorna un bloque vacio, si retornamos true retorna los elementos del bloque
end
puts impares

# un bloque puede recibir uno o varios argumentos
# ejemplo:
["Kevin","Adrian","Jose","Juan"].each_with_index do |nombre,index| #recibie el metodo y el index
  # importaqncia de como el bloque esta recibiendo dos argumentos
  puts "#{index}.- #{nombre}"
end
# Nota lo que retorna el bloque es la ultima instruccion
