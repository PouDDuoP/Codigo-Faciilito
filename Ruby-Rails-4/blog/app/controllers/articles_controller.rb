class ArticlesController < ApplicationController

  #GET /articles
  def index
    # SELECT * FROM articles
    # Article.all obtiene todos los registros del modelo
      # Tambien existe
        # Article.all.count muestra la cantidad de registro de la tabla
    @articles = Article.all
  end
  # GET /articles/:id
  def show
    # SELECT * FROM articles WHERE id
    # Article.find(params[:id]) va a encontrar todos los registros por su id
      # Tambien existe
        # Article.find_by(<columna>:"<dato>") para buscar por otor atributo de la tabla
        # Article.where("<columna> LIKE ?","%datos%") para buscar por patrones en los datos
        # Article.where("<columna> = ?",params[:id]) para buscar el valor exacto
          # Article.where("<columna> = ? OR <columna2> = ? ",params[:id],params[:title])
        # Article.where("<columna> LIKE ?","%datos%").count muestra la cantida que coinciden
        # Article.where.not("<columna> = ?",params[:id]) muestra todos los registro menos el ingresado
    @article = Article.find(params[:id])
  end
  #GET /articles/new
  def new
    #
    @article = Article.new
  end
  #POST /article
  def create
    # INSERT INTO
    @article = Article.new(title: params[:article][:title], body: params[:article][:body])
    # @article = Article.new(title: params[:article][:title], body: params[:article][:body])

    # @article.valid?
    # @article.invalid?
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  # DELETE /articles/:id
  def destroy
    # DELETE FROM articles
    @article = Article.find(params[:id])
    @article.destroy #Destroy eleimina el objeto de la base de datos
    redirect_to article_path
  end
  # POST /article/:id
  def update
    # UPDATE
    # @article.update_attributes({title: 'Nuevo titulo'})
  end
end
