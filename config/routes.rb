Rails.application.routes.draw do
  get "/home" => "static_pages#home"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"

  get  '/signup',  to: 'users#new'
  resources :users

end
