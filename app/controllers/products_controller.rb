class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show # Rails automatically makes a route of GET /products/:id -> products#show
    # The :id in the URL is available in params[:id]
    @product = Product.find(params[:id])
    # This @product can be used in the show.html.erb view
  end
end
