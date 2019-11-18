Rails.application.routes.draw do
  root 'pag_estatica#home'
  get '/login', to: 'pag_estatica#login'
  get '/show', to: 'pag_estatica#show'
  get '/libManager', to: 'books#index'
  get '/libPlus', to: 'books#new'
  get '/tiendaManager', to: 'tiendas#index'
  get '/tiendaPlus', to: 'tiendas#new'
  resources :tiendas
  resources :books
end
