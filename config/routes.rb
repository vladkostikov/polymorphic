Rails.application.routes.draw do
  resources :links
  resources :images
  resources :posts
  resource :comments, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
end
