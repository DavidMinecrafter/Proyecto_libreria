Rails.application.routes.draw do
  root 'pag_estatica#home'
  get '/login', to: 'pag_estatica#login'
  get '/show', to: 'pag_estatica#show'
  get '/libManager', to: 'pag_estatica#libManager'
  get '/libPlus', to: 'pag_estatica#libPlus'
  get '/tiendaManager', to: 'pag_estatica#tiendaManager'
  get '/tiendaPlus', to: 'pag_estatica#tiendaPlus'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
