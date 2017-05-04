# Varaibles de clases
# Dieferencias con respecto a variable de instancia:
  # Las variables de clases se pueden acceder desde metodos de la clase como metodos del objeto
    # nota las variables de clases siempre se buscaran en la clase
  # Cuando hay herencia
# class Player
#   # @type = "Humano" # variable de instancia, aquellas con el "@" arroba la inicio
#   @@type = "Humano" # variable de clases, aquellas que son identificadas con un ""@@"" doble arroba al inicio
#   # @type = "Humano"
#   def self.type_desde_clase # este es un metodo de clase por que posse el self.
#     p @@type # = "Humano"
#     # p @type # = "Humano"
#   end
#   def type_desde_objeto # este es un metodo del objeto
#     p @@type # = "Humano"
#     # p @type # = nil / rason del nil que @type objeto se esta buscando como una variale del objeto creado y no como variable de la clase
#   end
# end

class Player
  @@type = "clase var Humano" # variable de clases, aquellas que son identificadas con un ""@@"" doble arroba al inicio
  @type = "instancia var Duemer"

  def self.test
    p @@type
    p @type
    # las clases pueden acceder a sus variables de instancias y de clases
  end
end
class Lord < Player
  def self.test
    @@type = "Clase Hupiro" # al redefinir una variable de clase, esta es cambiada en todas las clases
    p @@type # las variables de clases de clases son heredadas
    p @type # las variables de instancia solo le pertenece a Player ó a las clases donde son declaradas
  end
end
class LordD < Player
  def self.test
    # @@type = "Clase Hupiro" # al redefinir una variable de clase, esta es cambiada en todas las clases
    p @@type # las variables de clases de clases son heredadas
    p @type # las variables de instancia solo le pertenece a Player ó a las clases donde son declaradas
  end
end

Player.test
Lord.test
LordD.test

# cuando utilizar variables de instancias: cuando no quieres que la variable sea heredada por las clases hijas, si la variable le pertenese a esa y solo esa clase
 
