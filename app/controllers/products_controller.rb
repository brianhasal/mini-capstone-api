class ProductsController < ApplicationController
  def first_product
    product1 = Product.first
    render json: product1.as_json
  end

  def all_products
    products = Product.all
    render json: products.as_json
  end


end
