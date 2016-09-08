Rails.application.routes.draw do
  root "static_pages#home"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"

  get 'sessions/new'

  resources :users
  resources :account_activations, only: [:edit]

  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
