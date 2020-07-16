class Api::OrdersController < ApplicationController
  def create
    @sub_total = Product.find_by(id: params[:product_id]).price * params[:quantity].to_d
    @tax = @sub_total * (0.09)
    @total = @sub_total + @tax
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: @sub_total,
      tax: @tax,
      total: @sub_total + @tax,
    )
    @order.save
    render "show.json.jb"
  end
end
