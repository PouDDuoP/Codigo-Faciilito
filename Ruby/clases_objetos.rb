# Clases : defiene el comportamieto
# Objetos : atributos de la clase

class MangaOn # las clases utilizan kamel case y la primera letra siempre es mayuscula
  attr_accessor :siguiendo, :pendiente, :visto  # atributos se defienen con "attr_accessor" falta por verificar

  # def initialize (siguiendo)
    # se puede agragar el atributo con el cual va inicializar -> # def initialize (siguiendo)
    # al agregar en initialize parametos se debe llamar a la clase y realizar el envio de los parametr
  def initialize 
    self.siguiendo = siguiendo
    # return "hola" # esto es ignorado por el metodo "new" 
    # puts "initialize"
  end

  def cascade # metodos
  end

  def unoxuno
  end
end

# reversi = MangaOn.new(200) # envio el parametro al llamar la clase si initilize posee parametros
# puts reversi.siguiendo

one_piece = MangaOn.new # instacia de la clase ú objeto
one_piece.siguiendo = 200 # uso de atributo de la clase

berserk = MangaOn.new
berserk.siguiendo = 300

puts berserk.siguiendo
puts one_piece.siguiendo

# initialize = metodo constructor
# nota: no dejarle mucho trabajo al metodo constructor porque es mas adificil probar el comportamiento del metodo
