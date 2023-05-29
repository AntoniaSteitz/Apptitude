Rails.application.routes.draw do
  get 'skills/index'
  get 'skills/new'
  get 'skills/create'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :skills, only: [:index, :new, :create]
end
