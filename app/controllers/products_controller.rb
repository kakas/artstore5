class ProductsController < ApplicationController

  def index
    @products = Product.includes(:photo)
  end

end
