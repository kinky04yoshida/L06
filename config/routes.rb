Rails.application.routes.draw do
  get 'carts/show'
  get 'cartitems/new'
  get 'top/main'
  resources :products, only: [:index, :new, :create, :destroy]
  get 'products/index'
  root 'top#main'
  get 'carts/enter'
  resources :cartitems, only: [:new, :create, :destroy]
  #get '/products/new', to: 'products#new'
  #post 'products/new', to: 'products#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
