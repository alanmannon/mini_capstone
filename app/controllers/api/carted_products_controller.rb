class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    @cart = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    @cart.save
    render "show.json.jb"
  end

  def index
    @cart = CartedProduct.all
    @cart = CartedProduct.all.where(user_id: current_user.id)
    render "index.json.jb"
  end
end
