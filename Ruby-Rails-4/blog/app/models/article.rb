class Article < ActiveRecord::Base
  # La tabla => articles (es igual a el nombre de la clases en plural)
  # Campos => article.title() => 'El titulo Articulo'
  # Escribir metodos
  # metodo de configuracion para la relacion entre user y article
  belongs_to :user
  validates :title, presence: true, uniqueness: true
    # valida con uniquebess: true para indicar que el titulo sea unico
  validates :body, presence: true, length:{ minimum: 20 }
    # valida con presence: true que no este vacio y con length:{minimum: 20}
    # que  el tamaño sea con una longitud de minimo 20
  # validates :username, format: { with: /regex/}
    # con format se valida EL FORMATO con una precion regular
end
