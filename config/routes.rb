Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions           => "users/sessions",
    :registrations      => "users/registrations",
    :passwords          => "users/passwords",
    :omniauth_callbacks =>  "users/omniauth_callbacks",
  },
  skip: [:sessions, :registrations]
  as :user do
    #ログイン
    get 'login' => 'users/sessions#new', as: :new_user_session
    post 'login' => 'users/sessions#create', as: :user_session
    #ログアウト
    delete 'logout' => 'users/sessions#destroy', as: :destroy_user_session
    #サインアップ
    get 'signup' => 'users/registrations#signup'
    get "/signup/registration" => "users/registrations#registration"
    post "signup/number" => "users/registrations#number"
    post "signup/address" => "users/registrations#address"
    post "signup/credit" => "users/registrations#credit"
    post "/signup/completed" => "users/registrations#create"
    get "/signup/done" => "users/registrations#done"
  end
  #   devise_scope :user do
  #   delete :sign_out, to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
  root "products#index"
  resources :products do
    resources :buys, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :users do
    member do
      get 'logout'
      get 'confirmation'
      get 'profile'
    end
    resources :lists, only: :index
    resources :cards, only: [:index, :new, :create]
  end
  get '/users/:id/profile', to: 'users#plofile'
  get '/users/:id/confirmation', to: 'users#confirmation'
  resources :category1s, only: [] do
    resources :category2s, only: :index do
      resources :category3s, only: :index
    end
  end
end
