# Polimorfismo
  # que es: es la habilidad de que multiples objetos respondan de maneras distinas al mismo mensaje
    # herencia: en ruby para polimorfismo es aplicar la misma accion aun cuando no realizan lo mismo
    # interfaces: en ruby no existe las interfaces, utilizan un concepto llamado (duck typing)
      # es decir el concepto hace referencia de que si algo suena como pato, camina como pato y nada como pato debe ser un pato
      # Nota: no importa el tipo del objeto si tienen los metodos y o atributos que nescesitamos tratalo como lo nesecitamos
      # ejemplo: si es un video no importa de donde viene si es un video puede hacer play
  # ejemplo Corte para: actor, cocinero y el estilista; misma accion pero diferente escenario.

class Game
  def online
    # Working
  end
end

class Lol < Game
  def load
    p "Cargando LOL"
  end
end

class DarkSoul < Game
  def load
    p "Cargando DS3"
  end
end

game = [Lol.new, DarkSoul.new, Lol.new, DarkSoul.new, DarkSoul.new, DarkSoul.new]
  game.each do |game|
    game.load # en la implementacion no importa cual juego es lo que importa es que todos tienen que cargar
  end
# Nota: aun sin la herencia todo funcionaria de la misma forma
