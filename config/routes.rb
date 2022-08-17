Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Users
  get "/users"        =>  "users#index"
  get "/users/add"    =>  "users#add"
  post "/users/create" =>  "users#create"



end
