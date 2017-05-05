# Habilidad de bloques para recibir argumentos y valor retornado en bloque

# <return> no puede ser utilizado dentro de un bloque es reservado solo para metodos

class Usuario
  attr_accessor :nombre
  # @nombre = "PouDD"
  def saludar
    # yield(@nombre) # recibiendo el bloque con lo que se quere recibiendo parametro y puts
    hola = yield(@nombre) # recibiendo el bloque con parametro y un strign(valor)
    # nota: el valor que retorna es el resultado de la ultima exprecion del bloque
    puts hola # mostrando el string almacenado
  end
end

poud = Usuario.new
poud.nombre = "PouDD"
# poud.saludar { |nombre| puts "Hola #{nombre}" }
# poud.saludar { |nombre| puts "Hello #{nombre}" }
# poud.saludar { |nombre,argumen2,argumento3,...| p "Mundo #{nombre}"} # mas de un argmuento se divide con una simple ','
poud.saludar { |nombre| "hola #{nombre}" }
poud.saludar do |nombre|
  hola = "Hello #{nombre}"
  hola = "Hola #{nombre}" # toma esta debido que siempre trae como resultado la utlima exprecion de un bloque
end
