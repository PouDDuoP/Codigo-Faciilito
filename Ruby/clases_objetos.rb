# Clases : defiene el comportamieto
# Objetos : atributos de la clase

class MangaOn # las clases utilizan kamel case y la primera letra siempre es mayuscula
  attr_accessor :siguiendo, :pendiente, :visto  # atributos se defienen con "attr_accessor" falta por verificar

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

one_piece = MangaOn.new # objeto
one_piece.siguiendo =  200

berserk = MangaOn.new
berserk.siguiendo = 300

puts berserk.siguiendo
puts one_piece.siguiendo

# initialize = metodo constructor
# nota: no dejarle mucho trabajo al metodo constructor porque es mas adificil probar el comportamiento del metodo
