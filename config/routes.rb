Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :images
get 'probar',to:'control#saludo'
root to: "home#index"


end
