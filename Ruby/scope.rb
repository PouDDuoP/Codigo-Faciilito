# Alcance de metodos
  # Clasificacion
    # Public: el metodo se puede llamar desde cualquier lugar
    # Private: el metodo privado se puede llamar solo desde dentro de la clase, en ruby las clases hijas heredan este tipo de metodos
    # Protected: el metodo protegido puede llamarse desde otra clase siempre y cuando sean del mismo tipo

class Magia
  # def initialize
  #   # self.publico
  #   privado
  # end
  public # por dfecto estan en Public asi q no es nescesario colocarlo si es public
    def publico
      puts "e aqui el metodo publico"
    end

  private
    def privado
      puts "estoy privado"
    end

  protected
    def protegido
      puts "Pura defensa Protegida"
    end
end

class Hechicero < Magia
  def initialize
    # privado
    @inner = Magia.new
  end
  def llamar_protegido
    @inner.protegido # inner.metodo de la clase Magia
    # @inner.privado
  end
end

class Guerrero
  def initialize
    @inner = Magia.new
  end
  def llamar_protegido
    @inner.protegido
    #  @inner.privado
  end
end


# Magia.new.privado
# Mago.new.publico
# magia = Magia.new
hechicero = Hechicero.new
guerrero = Guerrero.new

# Nota cuando .llamar_protegido se ejecuta muestra a guerrro como herror ya que no es clase hija y a hechicero como verdadero

# cuando se puede llamar o no a un o protegido:
  # Puede llamarse desde otras clases siempre y cuando sean del mismo tipo  (sean clases hijas) 

puts hechicero.is_a?(Magia) # se pregunta si hechicero es magia = retorna : true
puts guerrero.is_a?(Magia) # se pregunta si guerrero es magia = retorna : false
