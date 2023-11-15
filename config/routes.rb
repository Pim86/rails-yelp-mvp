Rails.application.routes.draw do
  # shallow nesting
  resources :reviews, only: %i[destroy]

  resources :restaurants do # 7 CRUD actions for restaurants
    # prefixes all the routes with /restaurants/:id
    resources :reviews, only: %i[create] # nested resource
  end
end
