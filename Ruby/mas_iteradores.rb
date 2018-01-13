# iteradores Time , Upto, Downto
# iterador es un metodo que internamente construye un ciclo
# este ciclo posee caracterisiticas especificas

# 1 - 10

# "10" numero de veses que se ejecutara el cilco
# ".times"  methodo del ciclo .veses que se ejecutara
# "do" inicio del ciclo
# "|i|" asignamos el 10 a el argumento "i" en el bloque que funciona como variable iteradora
# "puts i + 1" mostrar en pantalla el numero "i" + 1 por que .times inicia desde 0
# si fuera solo "puts i" mostraria del 0 al 9
# "end" terminamos el cilco

=begin
	10.times do |i|
	  puts i + 1
	end
=end

# -------------------

# upto realiza el cilco partiendo de un numero incicial y subuendo hasta el numero qu queramos llegar
# "1.upto(10)" inicia en 1 y llega hasta 10

=begin
	1.upto(10) do |i|
	  puts i
	end
=end

# ------------------

# for(i_=10;i>0;i--) # un for que va decendiendo de 10 a 0

# con ruby ese for seria asi
# inverso de upto

10.downto(1) do |i|
  puts i
end
