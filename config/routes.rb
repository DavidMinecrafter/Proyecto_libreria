Rails.application.routes.draw do
  root 'pag_estatica#home'
  get '/login', to: 'pag_estatica#login'
  get '/show', to: 'pag_estatica#show'
  get '/libManager', to: 'pag_estatica#libManager'
  get '/libPlus', to: 'pag_estatica#libPlus'
  get '/tiendaManager', to: 'tiendas#index'
  get '/tiendaPlus', to: 'tiendas#new'
  resources :tiendas
end
