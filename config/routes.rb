Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    # get "/all_products", controller: "products", action: "all_products"
  # becomes
  get "/products" => "products#index"

  post "/products" => "products#create"


  # get "/first_product", controller: "products", action: "first_product"
  # becomes more effective when adding a variable to the url
  get "/products/:id" => "products#show"
  # the :id can be anything, but it pairs up with ProductsController, and it needs to match

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

end
