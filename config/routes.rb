Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    # get "/all_products", controller: "products", action: "all_products"
  # becomes
  post "/users" => "users#create"





  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"


  get "/products" => "products#index"
  post "/products" => "products#create"
  # get "/first_product", controller: "products", action: "first_product"
  # becomes more effective when adding a variable to the url
  get "/products/:id" => "products#show"
  # the :id can be anything, but it pairs up with ProductsController, and it needs to match
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"




  
  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  # get "/first_product", controller: "suppliers", action: "first_product"
  # becomes more effective when adding a variable to the url
  get "/suppliers/:id" => "suppliers#show"
  # the :id can be anything, but it pairs up with suppliersController, and it needs to match
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"


  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"





end
