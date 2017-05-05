# scope(Alcance) de las variables
# Un bloque hereda el contexto en el que es ejecutado

def player
  yield
end

def player_nivel
  yield(68)
end

nombre = "PouD"
player { puts "Primer var nombre Guerrero #{nombre}"}
# la variable no ha sido decrarada en el bloque ni fue delcarada como argumento
# el bloque puede utilizar la varaible debido que el bloque recibe las variables locales
# es decir como el bloque se ejecuta en el mismo contexto donde se ejecuta la variable tiene acceso a la misma

player do
  nombre = "DuoP"
  puts "Segundo var nombre Mago #{nombre}"
end
player do |; nombre| #<----- variable local del bloque
  nombre = "Hugaro"
  puts "var local de bloque ';' pycho #{nombre}"
end
player_nivel do |nivel|
  puts "En el bloque nivel #{nivel}"
end
# el bloque puede modificar la varaible que existe en el contexto donde se ejecuta aun cuando se ha salido del bloque
# cuando la variable pertenese al bloque como en este caso el argumento nivel, dicha variable no puede ser llamada desde fuera del mismo
# por que esta variable desaparese tras ejecutarse el bloque

# existen variables locales que no son argumentos indicando antes de la variable ";" dando a enterder a ruby que esa variable va se ejecutada solo dentro del bloque y no modificara ninguna existente fuera del bloque (en el mismo contexto )
puts nombre # nombre cambiado por el primer bloque de PouD a DuoP
puts nivel # muestra error ya que se llama un argumento propio del bloque

# ejemplo de variable local y argumentos en un bloque

# player_nivel do |argumento1,argumento2,...; variableL1, variableL2|
#   puts "En el bloque nivel #{nivel}"
# end

# a la izquierda del punto y coma ";" estan los argumentos y a la derecha estan las variables locales
