Rails.application.routes.draw do
  # post 'welcome/index'
  # get 'welcome/index'
  # get "special", to: 'welcome#index'

  resources :articles
  # RESTfull al utilizar REST para nuestro recursos las rutas ya estan definicas y las cacciones tambien
=begin
    resources :articles, except: [:delete]
    # se pueden crear exepciones como :articles, except: [:delete] que indica que puede crear rutas para todo ecxepto para borrar
    # :articles, only: [:create, :show] vas a crear rutas para crear rutas para crear y mostar

    get "/articles"   index
    post "/articles"    create
    delete "/articles/:id"    delete
    get "/articles:id"    show
    get "/articles/new"   new
    get "/articles/:id/edit"    edit
    patch "/articles/:id"   update
    put "/articles/:id"   update
    # estas rutas son nescesarias para aplicar al recurso articles acciones "CRUD"
=end

  # root para cuando solo quede el dominio 'localhost:3000' redireccionar a el welcome index
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Metodos de envio
  # HTTP
  #   Velbos:
  #     GET
  #     POST
  #     PATCH
  #     PUT
  #     DELETE



end
