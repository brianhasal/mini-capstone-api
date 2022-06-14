class OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = Order.where(user_id: current_user.id)
    # ALTERNATIVE:
    # orders = current_user.orders
    render template: "orders/index"
  end

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    current_subtotal = 0
    current_tax = 0
    carted_products.each do |carted_product|
      current_subtotal += carted_product.product.price * carted_product.quantity
      current_tax += carted_product.product.tax * carted_product.quantity
    end
    current_total = current_subtotal + current_tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: current_subtotal,
      tax: current_tax,
      total: current_total
    )

    order.save

    carted_products.each do |carted_product|
      carted_product.status = "purchased"
      carted_product.order_id = order.id
      carted_product.save
    end

    render json: order.as_json




    # product = Product.find_by(id: params[:product_id])
    # current_subtotal = product.price * params[:quantity].to_i
    # current_tax = current_subtotal * 0.09
    # current_total = current_subtotal + current_tax

    # @order = Order.new(
    #   user_id: current_user.id,
    #   product_id: params[:product.id],
    #   quantity: params[:quantity],
    #   subtotal: current_subtotal,
    #   tax: current_tax,
    #   total: current_total
    # )
    # if @order.save
    #   render template: "orders/show"
    # else
    #   render json: { errors: @order.errors.full_messages}, status: :unprocessable_entity
    # end

  end

  def show
    @order = Order.find_by(id: params[:id], user_id: current_user.id)
    render template: "orders/show"
  end


end
