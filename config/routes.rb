Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    # get "/all_products", controller: "products", action: "all_products"
  # becomes
  get "/all_products" => "products#all_products"


  # get "/first_product", controller: "products", action: "first_product"
  # becomes more effective when adding a variable to the url
  get "/one_product/:product_id" => "products#one_product"
  # the :id can be anything, but it pairs up with ProductsController, and it needs to match




end
