class ProductsController < ApplicationController

  def index
    products = Product.all
    render json: products.as_json
  end

  def create
    product = Product.new(
      title: params["title"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
    product.save
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json(methods: [:friendly_created_at, :is_discounted?, :tax, :total])
  end

  def update
    product = Product.find_by(id: params["id"])
    product.title = params["title"] || product.title
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: {message: "Product Successfully Detroyed"}
  end




end
