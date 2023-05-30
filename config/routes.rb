Rails.application.routes.draw do
<<<<<<< HEAD
  get 'skills/index'
  get 'skills/new'
  get 'skills/create'
=======
  devise_for :users
>>>>>>> master
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :skills, only: [:index, :show, :new, :create]
end
