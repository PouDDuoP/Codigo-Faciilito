# Lambdas
  # es una referencia a una funcion anonima (funcion sin nombre)

# (lambda { puts "Hola mundo(¬°|)" }).call
# realizamos una llamada a la funcion definida

# lambada = lambda { puts "Hola mundo(¬°|)" }
# # Guardamos la lambda en una variable definida
# lambada.call

# lambada = ->() { puts "Hola mundo(¬°|)" }
# # lambda puede ser llamada con la sintaxis de flecha "->()" el comportamiento es el mismo
# lambada.call

# las lambda se comportan exactamente igual a un metodo
  # se pe pueden definir argumentos que tienen que cumplirse y el orden debe ser el mismo

# lambada = ->(nombre,numero) { puts "Alias #{nombre} Nivel #{numero}" }
# # lambada.call("PouD",99)
# # Funciona como un metodo, al no pasarle el arguento mostraria error como un metodo
# puts lambada.class.name
# una lambda es un objeto de la clase Proc

# La diferencia entre una lambda y un proc es:
  # un proc se comporta como un bloque
  # una lambda se comporta como un metodo

# Diferencias entre un metodo y un bloque:
  # los argumentos que se les envia a un bloque pasan a ser nulos si no se les envia un valor (son opcionales)
  # los argumentos pasados a un metodo son obligatorios y si no son enviados el script ejecutaria un error tipo ArgumentError

  # Cuando se realiza return desde un bloque tambien es finalizada la ejecucion del metodo que mando a llamar el bloque
  # Cuando se realiza un return de un metodo o una lambda solo es finalizada la ejecucion del metodo mismo pero no de quien lo mando a llamar

def prueba_lambda
  lambda_res = (->() { return "Fin del juego" }).call() # continua
  puts lambda_res
  puts "Luego de la lambda" # se ejecuta
end

def prueba_bloque
  (Proc.new { return "Fin del juego" }).call() # se ejecuta
  puts "Luego del bloque" # no se ejecuta
end

puts prueba_lambda # al retornar de un lambda se esta retornando el valor de un metodo, no finaliza el lambda y tampoco esta retornando "Fin del juego" de la ejecuacion del lambda a menos de que se asigne la funcion a una variable y luego se imprima
                   # de resto solo mostraria "Luego de la lambda"
puts prueba_bloque # al realizar return desde un bloque se finaliza la ejecucion del mismo
