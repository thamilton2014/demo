Rails.application.routes.draw do
  resources :users
  resources :account_activations, only: [:edit]
  resources :bookmarks,          only: [:create, :destroy]
  root "static_pages#home"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"

  get 'sessions/new'

  get     '/home',    to: 'home#index'
  get     '/signup',  to: 'users#new'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

end
