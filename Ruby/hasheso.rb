user = {nombre: "kevin", apodo: "PouD", edad: 22, tutor: "kevin"}

user_info = {tipo: 1, gm: "si"}

# puts user.length #.length este metodo para ver el tamaño del hash
# puts user.has_key?(:nombre) #.has_key? este metodo para ver si existen dentro del arreglo la clave
# puts user.has_value?("kevin") #.has_value este metodo es usado para ver si deontro del arreglo existe el valor

#.keys este metodo devuelve las claves del arreglo y su contra parte .value devuelve los valores del arreglo
# puts user.keys
# puts user.values

# user.clear #.clear este metodo limpia el hash
# user.delete(:edad) #.delete este metodo borra el elemento de hash indicado
# puts user.empty? #.empty este metodo nos indica si el hash esta vacio o no retornando como respuesta un booleano

# puts user.key("kevin") # .index("") este metodo busca en el arreglo busca segun el valor y muestrra la llave que posee dicho valor
# al usarlo es recomendado aplicar .key("") para realizar la busqueda
# nota: solo muestra el primero que este en el hash

# puts user.invert #.invert este metodo invierte las claves y los valores (los valores son claves y las claves son valores.)

puts user.merge(user_info) # .merge(segundo hash) este metodo une dos hash en un solo hash
