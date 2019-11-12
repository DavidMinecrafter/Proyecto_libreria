Rails.application.routes.draw do
  root 'pag_estatica#login'
  get 'pag_estatica/login'
  get 'pag_estatica/home'
  get 'pag_estatica/show'
  get 'pag_estatica/libManager'
  get 'pag_estatica/libPlus'
  get 'pag_estatica/tiendaManager'
  get 'pag_estatica/tiendaPlus'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
