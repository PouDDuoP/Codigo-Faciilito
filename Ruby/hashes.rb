# Hashes: un hash es una estructrua que almacena datos
# la diferencia entre una hash y un arreglo es como podemos acceder a los datos que se almacenan
# en uarreglo accedemos al elemento via la pososion o el indice del elemento
# arreglo = ["Hola","Mundo"]
# arreglo[1] # aca apuntamos a "Mundo"

# Hash
# {"nombre" => "kevin", "edad" => "22", :hola => "mundo"}

# para definir un hash es utilizando las llaves "{}"
# los idiccionarios o hashes se componene de dos elementos:
# => una Clave : aparece a la izquierda y via a este dato es que podremos obtener la inforamcion
# => un Valor : el valor aparece a la derecha y se separa de la clave via una flecha "=>"
# la clave y el valor puede ser caulquier objeto

# user = { "nombre" => "Kevin", "alias" => "PouD", "password" => 123456, 1 => "Perfil", [] => "arreglo"}
# user["humano"] = false # modificar hash
# user.default = "No existe esa clave" # .default metodo para posiciones donde no existe ningun hash


# en ruby es mejor utilziar simbolos que strings como lo siguientes y
# es recomendable utilziar alias: "Poud" esta sintaxis es mas facil de leer
# al utilizar simbolos si llamamos al string da erro por que ya no es un string es un simbolo
user = { nombre: "Kevin", alias: "PouD", password: 123456, p: "Perfil", a: "arreglo"}

user.each do |clave,valor| # el siclo es como en los arreglos, la unica diferencias es que en el argumento se tiene que pasar la clave y el valor
  puts "En #{clave} esta Guardado #{valor}"
end
