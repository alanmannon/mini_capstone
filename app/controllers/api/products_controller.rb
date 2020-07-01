class Api::ProductsController < ApplicationController
  def sample_product
    #@sample_product = Product.order(Arel.sql("RANDOM()")).first
    @sample_product = Product.all.sample
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
