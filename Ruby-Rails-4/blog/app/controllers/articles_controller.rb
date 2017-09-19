class ArticlesController < ApplicationController
  # todos los controladores heredan de ApplicationController
  # a esta ruta se accede con el verbo GET y el path /articles (GET /articles)
  def index
    # SELECT * FROM articles
    # Article.all obtiene todos los registros del modelo
      # Tambien existe
        # Article.all.count muestra la cantidad de registro de la tabla
    # variables "@articles" de clases que puede ser utulizadas tanto dentro como fuera del controlador
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
    @article = Article.new(articles_params)
    # @article = Article.new(params[:article])
    # @article = Article.new(title: params[:article][:title], body: params[:article][:body])
    # @article = Article.new(title: params[:article][:title], body: params[:article][:body])

    # @article.valid?
    # @article.invalid?
    # para verificar que se valdo o invalido (retorna boolean)
    if @article.save
      redirect_to @article
    else
      render :new
    # redner :new = la vista a utilizar no es la de create, sino la de new  
    end
  end
  def edit
    @article = Article.find(params[:id])
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
      @article = Article.find(params[:id])
      if @article.update(articles_params)
        redirect_to @article
      else
        render :edit
      end
  end
  # Strong params
  private
    def articles_params
      params.require(:article).permit(:title,:body)
      # se realiza un require sobre el nivel mas alto "article" y luego un permit en los que van en la peticion ":title,:body" que seran los campos permitidos
    end

end
