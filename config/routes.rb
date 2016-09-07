Rails.application.routes.draw do
  root "static_pages#home"
  get 'sessions/new'

  get "/home" => "static_pages#home"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"

  get  '/signup',  to: 'users#new'
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :account_activations, only: [:edit]

end
