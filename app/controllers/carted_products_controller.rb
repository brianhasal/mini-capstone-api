class CartedProductsController < ApplicationController

  def index
    @carted_products = CartedProduct.where(
      user_id: current_user.id, 
      status: "carted"
    )
    render template: "carted_products/index"
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil
    )
    @carted_product.save
    render template: "carted_products/show"
  end

  # def destroy
  #   carted_product = CartedProduct.find_by(id: params[:id])
  #   carted_product.status = "removed"
  #   carted_product.save
  #   render json: {message: "Carted Product Removed"}
  # end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id], user_id: current_user.id, status: "carted")
    if carted_product
      carted_product.status = "removed"
      carted_product.save
      render json: { message: "Carted product successfully destroyed!" }
    else
      render json: { message: "Invalid request" }, status: 422
    end
  end
end
