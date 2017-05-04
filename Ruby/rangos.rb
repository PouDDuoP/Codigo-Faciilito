# numeros = [1,2,3,4,5,6,7,8,9,10]
# numeros = (1..10) # numeros del 1 al 10

# (1..10).step(2).each do |numero|
#   # .step indica que en el rango del (1..10) va a darme los numeros de dos en dos
#   # muestra los numeros pares si se quiere numeros impares se inicia del 0
#   puts numero #imprimo el parametro |numero| la cantidad de veses que itere el ciclo
# end

# ('a'..'z').each do |letras|
#   #tambien funciona con letras
#   print letras+"\n"
# end

# puts (0..100).min # para el valor minimo del rango
# puts (0..100).max # para el valor maximo del rango

# los rangos no son arreglos

# puts (0..20).to_a.reverse # se utiliza to _a para cambiar el rango a un arreglo y poder aplicar metodos de  arreglos

# puts ('ma'..'md') #imprime el rango
# puts ('ma'..'md').to_a #imprime el arreglo del rango

# el rango no almacena los elementos solo almacena el primer elemento y el ultimo elemento
