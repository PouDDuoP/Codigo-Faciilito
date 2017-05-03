# Herencia
# Solo la hija hereda del padre, hija = a especialisacion del padre
# Ruby no aplica multiple Herencia
# todas las clases heredan de objects, heredan de metodos o propiedades de la clase object estan disponobles en todoss los objetos del lenguaje

class Pagina
  attr_accessor :titulo,:capitulos,:sinopsis,:popularidad
  def html_code
    "<img></img>"
  end
  def config(titulo)
    @titulo = titulo
  end
end

class TuMangaOn < Pagina # para heredad de la clase padre se utiliza "<"
  attr_accessor :tu_manga_id
  def html_code
    "<div></div>"  # sobre escribir el codigo del padre
  end
end

class SubManga < Pagina # para heredad de la clase padre se utiliza "<"
  attr_accessor :sub_manga_id
  def config(titulo)
    super # super llama al metodo del mismo nombre pero de la clase padre y le envia todos los argumentos del metodo al que esta en el padre
      # PopUps
      puts "PopUps x100 de super"
  end
end

# puts TuMangaOn.new().html_code
#
# pm = TuMangaOn.new
#
# pm.titulo = "Berserk"
# pm.tu_manga_id = "B1"
#
# puts "Pagina de Mangas: #{pm.titulo}"
# puts "Manga ID: #{pm.tu_manga_id}"

pm = Pagina.new
pm.config("PR")
pm = SubManga.new
pm.config("PopUps X9")

puts pm.titulo

puts 5.object_id
puts SubManga.new.object_id
