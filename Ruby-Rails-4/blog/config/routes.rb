Rails.application.routes.draw do
  get 'welcome/index'

  # root para cuando solo quede el dominio 'localhost:3000' redireccionar a el welcome index
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
