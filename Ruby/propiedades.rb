# propiedades y Metodos Accesores
class Jugador
# las propiedades se identifican por variables de instancias
# que son identificadores del objeto no de la clase
attr_accessor :nombre #este define el get'rs y el set'rs
attr_reader :nombre #este define el get'rs nada mas
attr_writer :nombre#este define el set'rs nada mas
#estos son lkos 3 metodos accesores y hacen lo mismo que el codigo del 18 al 23

  def initialize(name)
    @nombre = name #las varaibles de instancias inician con un @
    # puts @nombre
    #estas variables puedes ser accedidas desde cuaquier parte del objeto
  end
  # def muestra
  #   puts @nombre
  # end
  # def nombre # metodo accesor Get "utilizado para leer propiedades"
  #   @nombre  # en ruby los get'rs se ven solo el nombre igual a la propiedad
  # end
  # def nombre=(nombre) # metodo accesor Set "utilizado para cambiar propiedades"
  #   @nombre = nombre     # en ruby los set'rs se ven asi "nombre="
  # end
end

henso = Jugador.new("henso")
jhon = Jugador.new("jhon")

#dos objetos que son instancias de la clase pero los dos con un valor distinto para la propiedad @nombre

# puts henso.nombre # no muestra las variablers de instancias ya que no pueden ser modificadas
# puts jhon.nombre # u vistas desde fuera del objeto
#
# henso.muestra
# jhon.muestra

#para acceder a las variables de instancias se utilizan metodos accesores

# puts jhon.get_nombre
#   jhon.set_nombre("Carlito")
# puts jhon.get_nombre

 puts jhon.nombre
   jhon.nombre = "Carlito" # asi es la sintaxis de ruby
 puts jhon.nombre

# puts jhon.get_nombre
# puts jhon.get_nombre
