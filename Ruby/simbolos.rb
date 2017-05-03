# Simbolos: es una cadena inmutable(no puedes modificar la cadena en tiempo de ejecusion)

# cadena = "kevin"
cadena = "kevin" #es inmutable por ser un simbolo no cambia
cadena2 = "kevin"
simbolo = :kevin
simbolo2 = :kevin

# cadena.capitalize! #retorna el mismo string pero con la primera cadena transformada

puts cadena.object_id #.object_id este metodo muestra el numero unico del objeto dentro de ruby
puts cadena2.object_id
puts simbolo.object_id
puts simbolo2.object_id

#los simbolos comparten el mismo object_id a persar de estar en diferentes variables
#las cadenas poseen diferentes objects_id
#nota: los simbolos cuando ruby busca, si ya existe utiliza el mismo simbolo

# if cadena == cadena2 ruby revisa todo el string para verificar si son identicos
# if simbolo == simbolo2 ruby compara de manera mas aeficiento solo haciendo referencia al .object_id

# ---- Cuando utilziar simbolos -----
# 1.- cuando no necesito modificar el string
# 2.- Cuando no necesito los metodos del string
# 3.- Los simbolos se usan como nombres
