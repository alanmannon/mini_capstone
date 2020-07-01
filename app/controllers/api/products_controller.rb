class Api::ProductsController < ApplicationController
  def sample_product
    render "sample_product.json.jb"
  end
end
