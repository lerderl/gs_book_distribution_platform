Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#login'
  get 'home', to: 'pages#home'
  resources :books, only: [:show, :index]
end
