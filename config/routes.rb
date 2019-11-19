Rails.application.routes.draw do
  root 'quantities#index'
  get '/login', to: 'pag_estatica#login'
  get '/show', to: 'pag_estatica#show'
  get '/libManager', to: 'books#index'
  get '/libPlus', to: 'books#new'
  get '/tiendaManager', to: 'tiendas#index'
  get '/tiendaPlus', to: 'tiendas#new'
  resources :tiendas
  resources :books
  resources :quantities
end
