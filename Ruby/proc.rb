# Proc
# un bloque no es un objeto en ruby es parte de la sintaxis
# un bloque solo puede ser definido cuando se envia a un metodo
# bloque = {puts "No Soy un objeto en ruby O.o"}

def soy &bloque
# al definir una variable con el anspersan "&" no estamos definiendo un bloque estamos definiendo un Proc
  puts bloque.class.name # indica que este objeto es una isntancia de la clase Proc
  bloque.call
end

soy {puts "Mi sintaxis me identifia como un bloque"}

# en terminos generales un bloque y un proc son iguales excepto:
  # dieferencia entre un bloque y un proc
    # los bloques no son objetos y los porc si son objetos
    # Los proc's pueden ser almacenados en varaible y pasados como argumentos
    #

# un metodo puede recibir solo un bloque mientras que puede recibir multiples proc's
# ejemplo:

def somos proc1, proc2
  proc1.call
  proc2.call
end

proc1 = Proc.new { puts "soy proc1"}
proc2 = Proc.new { puts "soy proc2"}

# Proc.new llamamos a la clase y se pasa al constructor { puts "soy proc1" } le pasamos un bloque de codigo

somos(proc1,proc2)

# Cuando utilziar un bloque y cuando utilziar un proc
  # por defecto utilizar bloques solo en ciertas ocaciones utilizar proc's por ejemplo:
    # reenviar el bloque a otros objetos
    # sea nesesario almacenar el bloque en una variable
    # o sea requerido utilizar mas de un bloque por cada metodo

# los bloques son mas rapidos
# ejemplo:
# el este metodo tiene que crear un proc agarrando "bloque" con el "&"
            # def soy &bloque
            #   puts bloque.class.name
            #   bloque.call
            # end
# en este solo se tiene que ejecutar el bloque
            # def soy
            #   yield
            # end
