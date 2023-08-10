Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  resources :orders
  resources :stickers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
