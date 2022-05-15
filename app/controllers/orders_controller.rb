class OrdersController < ApplicationController

#(user_id, product_id, quantity, subtotal, tax, total)

  def index
    @orders = Order.where(user_id: current_user.id)
    # ALTERNATIVE:
    # orders = current_user.orders
    render template: "orders/index"
  end

  def create
    product = Product.find_by(id: params[:product_id])
    current_subtotal = product.price * params[:quantity].to_i
    current_tax = current_subtotal * 0.09
    current_total = current_subtotal + current_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: product.id,
      quantity: params[:quantity],
      subtotal: current_subtotal,
      tax: current_tax,
      total: current_total
    )
    if @order.save
      render template: "orders/show"
    else
      render json: { errors: @order.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def show
    @order = Order.find_by(id: params[:id], user_id: current_user.id)
    render template: "orders/show"
  end


end
