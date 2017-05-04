# arreglo = [12,'kevin',true,':-D'] # inicializa un areglo con los parametos agreagados#
# arreglo[0] = 'cambie :O'
# arreglo_dos = Array.new(5) # inicia un areglo con la cantidad indicada de pocionoes vacias
# puts arreglo_dos

 #arreglo = %w[ 99 'hola' mundo ] # para inicializar el areglo y cada parte del arreglo es separada por "espacios" no por ","
# arreglo << 'hola' # agregar nuevos arreglos con "<<" significa inserta lo qu es te a la derecha de "<<" en el areglo que esta a la izquierda de "<<"
# puts arreglo[2]

notas = [1, 1, 2, 3, 4, 5, 6]
# notas = %w[1 1 2 3 4 5 6]
  # puts notas * 2
# puts notas * "-"
# puts notas.join("").class.name
# .class.name es utilizado para ver que tipo de arreglo es , en este caso es un string
# puts notas.join (",")
#.join recibe como argumento un string que se para todos los elementos de una cadena

# * " - " es igual a .join(" - ")

# realizamos un join al aplicar multiplicacion el arreglo
# si se multiplica por el numero el arreglo se muestra la cantida de veses del numero
# si se multiplica por un string cada elemento del arreglo es separado por el estring indicado

# puts notas.sort # utilizado para ordenar el arreglo de menor a major
# .sort solo funciona con numeros y %w identifica el arreglo como un string

# puts notas.sort.reverse
#.sort.reverse ordena el arreglo de major a menor
# .reverse ordena el arreglo en sentido contrario a como esta

# puts notas.include?(10)

#el .include?(10) es utilizado para buscar en el arreglo si existe algun elemento
#con el parametro indicado "10" y retorna true si lo consigue o false en caso contrario

# puts notas.first # .first muestra el primer arreglo
# puts notas.last # .last muestra el ultimo arreglo

# puts notas.uniq # muestra el arreglo sin repetir elementos

puts notas.sample # devuelve un elemento del arreglo de manera aletoria 
