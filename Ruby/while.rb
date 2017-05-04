# funcionan como en otros lenguajes, siendo un cilo que es reailizado siguiendo los parametros de una exprecion que evalua veradero o falso
# i = 0
#
# while i < 10
#   puts i
#   i += 1
# end

manga = ["Berserk","One-piece","Fairy Tale","tokyo Gohul"]
vistoh = true

index_man = 0

#si hay mangas para ver y se esta subiendo
# entoses abrir mangas

# while (index_man < manga.length) && vistoh
#   puts "viendo manga : #{manga[index_man]}"
#   index_man += 1
#
#   #si nos manda 0 paramos la vista de m,anga, si no seguimos viendo mangas
#   print "coloca 0 o una letra para detener mangas: "
#   respuesta = gets().chomp.to_i
#   # if respuesta == 0 || respuesta == ('a'..'z').to_a
#   #   vistoh = false
#   # end
#
#   #linea de codigo mas parecido a ruby
#     # vistoh = false if respuesta == 0 || respuesta == ('a'..'z').to_a
#       vistoh = respuesta != 0 || respuesta == ('a'..'z').to_a
# end

# until es a while lo que un less es a un if
#until es una exprecion que se ejecunta cuando la exprecion es falsa, es el inveso de while

# numero = 20
#
# print "adivina el numero: "
# numero_user = gets().chomp.to_i
#
# # while numero_user != numero
# #   print "incorrecto adivina de nuevo el numero: "
# #   numero_user = gets().chomp.to_i
# # end
# # until numero_user == numero
# #   print "incorrecto adivina de nuevo el numero: "
# #   numero_user = gets().chomp.to_i
# # end
#
# puts "Alfin adivinas !!!!!!"

#do while

numero = -1

begin
  numero = gets.chomp.to_i
end while numero < 0 #se ejecuta hasta que numero sea menor a 0 que es la
                      # condicion que sea verdadero cun until es lo inverso

#el begin end while se ejecuta almenos uan ves es el do while de ruby
