Rails.application.routes.draw do
  devise_for :users
  root to: "skills#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/home', to: 'pages#home'

  resources :skills, only: [:index, :show, :new, :create]
end
