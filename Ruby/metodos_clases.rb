# Metodos de clases
  # las clases tambien son objetos en ruby
  # Recordatorio: variable de instancia @variable
  # Metodos de Clases ó metodos estaticos: se mandan a llamar sobre la clase y no sobre una instancia u objeto de la clase
class Objeto # clase objeto
  @nombre_clase = "Objeto" # variable de instancia
  # Nota: le pertenece a la clase porque esta definida a nivel de la clase
  # def initialize
  #   @nombre_clase = "Objeto"
  #   # Estando definida dentro de algun metodo como por ejemplo el constructor
  #   # ya no le pertenese a la clase si no al objeto
  # end

  # def self.nombre_clase # metodos de la clase 3
  #     # self hace referencia al objeto de la clase
  #   @nombre_clase # varaibles accesibles
  # end
  #
  # def self.nombre_clase=(nombre_clase) # el valor de la variable de istancia se puede reasignar como cualquier otro objeto
  #   @nombre_clase = nombre_clase
  # end

  # otra forma de hacer referencia a el objeto de la clase es:
  class << self
    def nombre_clase # metodos de la clase 3
        # self hace referencia al objeto de la clase
      @nombre_clase # varaibles accesibles
    end

    def nombre_clase=(nombre_clase) # el valor de la variable de istancia se puede reasignar como cualquier otro objeto
      @nombre_clase = nombre_clase
    end
  end
  # De esta forma nos omitimos self.
end
# cuando utilizar metodos de clases, utilizarlo cuando la funcionalidad que estoy escribiendo no le pertenece a ninguna instancia  o a ningun objeto
# un ejemplo de ello son los metodos que se ejecutan sobre el activeRecord de rails:

class User
end

User.find() # esta funcionalidad no le pertenece a ningun objeto
User.new.find() # no abira caso en crear un usuario y que ese usuario buscara otro usuario
# es cuestion de lectura


Objeto.nombre_clase ="Otro Objeto"
puts Objeto.nombre_clase
