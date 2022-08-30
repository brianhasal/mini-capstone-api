class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    render template: "products/index"

  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      user_id: current_user.id,
    )
    if @product.save
      Image.create(product_id: @product.id, url: params[:url])
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product Successfully Detroyed"}
  end




end
