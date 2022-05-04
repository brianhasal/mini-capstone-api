class ProductsController < ApplicationController

  def all_products
    products = Product.all
    render json: products.as_json
  end

  # def first_product
  #   product1 = Product.first
  #   render json: product1.as_json
  # end

  def one_product
    product = Product.find_by(id: params["product_id"])
  end




end
