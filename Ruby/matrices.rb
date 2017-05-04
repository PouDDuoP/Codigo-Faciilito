# la diferencia de una matriz a un arreglo es la cantidad de dimenciones
# ya que el arreglo tiene una sola dimencion
# las matrices tienen mas de una dimencion

# caracterisiticas de matrices
# => Cantidad de dimenciones: 2 dimenciones
# => Los arreglos internos deben tener la misma cantida de elementos
# => Clace Matrix => Todos los elementos deben ser numeros

# arreglo = [1,2,3,4,,5[2,3,4,[3,4,5]]] # Matriz
# arreglo = [1,2,3,4,5] # Arreglo

require 'matrix' # debe importarcer para utilizar la matrix
# matriz = Matrix[[1,8,3],[5,2,2],[9,4,7]]
matriz = Matrix[[1,8,3],[5,2,2]]

#asi se veria la matriz
  # [
  #   1 8 3
  #   5 2 2
  #   9 4 7
  # ]

# puts matriz
# puts matriz.diagonal? # para ver si la matriz tiene diagonal, con matrices no diagonales lanza error
# retorna false si la matris no es diagonal segun el algebra y true si lo es

matriz.each(:diagonal) do |i| #se puede iterar la matriz
  # (:diagonal) es utilizado en el metodo each para que nos muestre la diagonal de la matriz
  # (:strict_lower) para ver los elementos por debajo de la diagonal
  # (:strict_upper) para ver los elementos por arriba de la diagonal
  puts i
  # muestra los valores desde arriba a la izquierda y luego pasando de izquierda a derecha
  # luego pasando de arriba hacia abajo
end
