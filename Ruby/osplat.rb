# Operador splat
# el Operador splat "*" dice que a este metodo puedes pasarle cualquier cantidad de argumentos y yo los voy recibir como un arreglo

def hola_user(hola,*personas)
  # personas es un arreglo que contiene todos los argumentos que se la pasaron a un metodo
  # el primer argumento obtendria kevin y el resto se alamcena en el splat operator "*"

  personas.each {|persona| puts "#{hola}  #{persona}" }
end

 nombres = ["kevin","he","is","je","ke","da"]
 # hola_user "kevin","adrian","23",25, ":[]","}{}"
 hola_user ("hola user:", nombres) # muestra el array por que es interpretado como tal
 hola_user ("hola user:", *nombres) # para combiertir el arreglo en una lista de parametros se utiliza tambien el splat "*"
