class CartsController < ApplicationController

  def index
    @products = current_cart.items.includes(:photo)
  end

end
