class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def search
    @query = params[:query]
    @product = Product.where('name LIKE ?', '%' + @query + '%')
    if @product.length.zero?
      render plain: 'Not found', status: :not_found
    else
      render json: @product
    end
  end
end
