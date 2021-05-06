Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # see all restaurants
  get "/restaurants", to: "restaurants#index"
  # create a restaurant and redirect to the show view of that restaurant
  get "/restaurants/new", to: "restaurants#new"
  post "/restaurants", to: "restaurants#create"

  # see the all reviews asociated to a restaurant
  get "/restaurants/:id", to: "restaurants#show"

  # add a review to a restaurant

  resources :restaurants do
  resources :reviews, only: [ :new, :create ]
  end

end
