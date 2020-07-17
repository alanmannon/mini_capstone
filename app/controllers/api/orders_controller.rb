class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params[:product_id])
    tax = (0.09)

    @total = @sub_total + @tax
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity].to_i,
      tax: 0.09,
      total: @sub_total + @tax,
    )
    @order.save
    render "show.json.jb"
  end
end
