class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    @products = Product.where("name LIKE ?", "%#{params[:search]}%")

    @products = @products.order(:id => :asc)
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      # @image = Image.new(
      #   url: params[:url]
      #   product_id: [@product.id]
      # )
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    if @product.save
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "file deleted" }
  end
end
