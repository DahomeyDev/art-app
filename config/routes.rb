Rails.application.routes.draw do
  resources :paintings, only: [:index, :show, :new, :create, :destroy]
  resources :galleries
  resources :artists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
