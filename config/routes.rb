Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #   devise_scope :user do
  #   delete :sign_out, to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
  root "products#index"
  resources :products do
    resources :buys, only: [:new, :create]
  end
  resources :users do
    resources :lists, only: :index
    resources :cards, only: [:index, :new, :create]
  end
  get '/users/:id/logout', to: 'users#logout'
  # get '/products/test/buy', to: 'products#buy'
end
