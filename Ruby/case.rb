# case

# 0% - 10; 5 es reprobado

print "Dame tu calificacion (0-10):"
calificacion = gets.chomp.to_f
#   if calificacion == 10
#     puts "Top 10 de notas"
#   elsif calificacion == 9
#     puts "Top 50 de notas"
#   elsif calificacion == 8
#     puts "Top 100 de notas"
#   elsif calificacion == 7
#     puts "Top 500 de notas"
#   elsif calificacion == 6
#     puts "Top 1000 de notas"
#   else
#     puts "como es 5 o menos estas 'REPROBADO(A)'"
#   end

# case calificacion
#   when 10
#     puts "Muy bien!!!"
#   when 9
#     puts "Falto poco para ser de los mejores"
#   when 8
#     puts "Puedes mejorar pero es una exelente nota"
#   when 7
#     puts "Estas muy cerca del limite puedes mejorar"
#   when 6
#     puts "Este es el limite, por uno tu nota no fue catastrofica"
#   else
#     puts "Que cagada"
#   end

# retornando un string


# === / Metodo utiliado en el case
# ==

# COLOCANDO EL PUTS EL VA A IMPRIMIR EL RESULTADO Y CON ELLO NOS AHORRAMOS COLOCAR PUTS EN CADA EVALUACION

puts case calificacion
when 10,11
     "Muy bien eres de los mejores!!!"
  when 9
     "Que buena nota aunque falto poco para ser de los mejores"
  when 8
     "Puedes mejorar pero es una nota promedio"
  when 7
     "Estas muy cerca del limite puedes mejorar"
  when 6
     "Este es el limite, por uno tu nota no fue catastrofica"
  else # caso por default
     "Que cagada"
end
