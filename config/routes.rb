Rails.application.routes.draw do
  # get 'bookings/new'
  devise_for :users
  root to: "skills#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/home', to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :skills, only: [:index, :show, :new, :create]

  resources :skills do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:update]
end

