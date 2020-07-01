class Api::ProductsController < ApplicationController
  def sample_product
    x = Product.count
    random_number = rand(1..x)
    @sample_product = Product.find_by(id: random_number)
    render "sample_product.json.jb"
  end

  def gasoline
    @gas = Product.first
    render "gasoline.json.jb"
  end

  def rice
    @rice = Product.find_by(id: 4)
    render "rice.json.jb"
  end
end
