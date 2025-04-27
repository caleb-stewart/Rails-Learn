class ProductsController < ApplicationController
  def index
    @products = Product.all
    @clubs = GolfClub.all
  end
end
