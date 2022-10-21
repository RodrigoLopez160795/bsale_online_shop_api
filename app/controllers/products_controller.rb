class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def search
    @query = params[:query]
    @product = Product.where('name LIKE ?', '%' + @query + '%')
    render json: @product
  end
end
