Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #Users
  resources :users
    #RESTful：この1行でCRUDのルーティングができる
    #users_controllerのnew,create,index,show,edit,update,destroyの7つのアクションにルーティングできる！
    #以下7つのルーティングを描く必要が無くなる！
      # get "/users"              =>  "users#index"
      # get "/users/new"          =>  "users#new"
      # post "/users/create"      =>  "users#create"
      # get "/users/:id"          =>  "users#show"
      # get "/users/:id/edit"     =>  "users#edit"
      # post "/users/:id"         =>  "users#update"
      # post "/users/:id/destroy" =>  "users#destroy"




end
