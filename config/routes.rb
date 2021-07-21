Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants do
    # prefixed by /restaurants

    resources :reviews, only: [:new, :create]

   # get restaurants/:restaurant_id/reviews/new
   # post restaurants/:restaurant_id/reviews

    collection do
      get "/top", to: "restaurants#top" # prefixes /restaurants
    end

    member do
      get "/chef", to: "restaurants#chef" # prefixes /restaurants/:id
    end

  end

  resources :reviews, only: :destroy # DELETE reviews/:id

# New

# Create



# Destroy












 #  restaurants GET    /restaurants(.:format)                                                                            restaurants#index
 #                 POST   /restaurants(.:format)                                                                            restaurants#create
 #  new_restaurant GET    /restaurants/new(.:format)                                                                        restaurants#new
 # edit_restaurant GET    /restaurants/:id/edit(.:format)                                                                   restaurants#edit
 #      restaurant GET    /restaurants/:id(.:format)                                                                        restaurants#show
 #                 PATCH  /restaurants/:id(.:format)                                                                        restaurants#update
 #                 PUT    /restaurants/:id(.:format)                                                                        restaurants#update
 #                 DELETE /restaurants/:id(.:format)                                                                        restaurants#destroy


end
