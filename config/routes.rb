Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/restaurants", to: "restaurants#index", as: :index
  post "/restaurants/", to: "restaurants#create"
  get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end
