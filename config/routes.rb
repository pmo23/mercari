Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products
  resources :users
  get '/users/:id/logout', to: 'users#logout'
end
