#metodo grupo de codigo que se puede reciclar

# def square(i) #def es la palabra reservada para definir un metodo en ruby
#   # Retorna el cuadrado de un numero
#   return i ** 2 # la palabra return se puede ignorar ya que ruby retorna la ultima linea que consiga
#                 # su uso puede ser en el momento de retornar algo antes del final del metodo
# end

def square(i)
  return 0 unless i.is_a? Integer # amenos de que x sea un entero retorn 0
  i ** 2
end
def saludar
  puts "hola mundo"
end

  saludar()

  puts square(2)# los parentecis se pueden ignorar puts square 3
