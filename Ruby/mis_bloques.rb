# metodos que reciben los bloques
def saludo &bloque #<-- este &<nombre> es otra manera de recibir un bloque en alguno de nuestros metodos
  # el argumento que recibe el bloque tiene que ser el ultimo argumento si se hiciera algo como: &bloque ,nombre genera un error de sintaxis
  # porque los argumentos del metodo deben ir siempre antes de la declaracion del argumento del bloque
  # bloque.call if block_given? # al utilizar el metodo &<nombre> se debe ejecutar un bloque utilizando el metodo .call sobre el objeto que estamos recibiendo
  # yield # yield: palabra reservada para llamar el bloque
  # yield if block_given? # el metodo if block_given? es una solucion a el error que genera yield al no encontrar bloque a ejecutar, admeas no choca cuando la variable que resive el bloque es indicada como el ejemplo &bloque
  saludo_otro(&bloque)
end

def saludo_otro &block #<-- con esta sisntasis se pueden pasar los bloques entre si
  puts "Mandando a llamar desde saludo_otro"
  block. call
end

saludo { puts "Hola PouD" }
# cuando el interprete consigue yield manda a ejecutar el bloque de codigo, en este caso { ptus "Hola PouD" }

# Tambien se puede hacer asi
# hola do
#   puts "Hola PouD"
# end

# en caso de ejecutarse un algo sin un bloque yield genra un error
# ejemplo: saludo()

# Cuando utilziar yield: es nuestra opcion por defecto, en caso de no existir razon para alamcenar la variable
  # tambien es mas rapido que cuando se declara el argumento "&"
