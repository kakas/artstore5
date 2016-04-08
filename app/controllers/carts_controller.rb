class CartsController < ApplicationController

  before_action :authenticate_user!, only: [:checkout]

  def index
    @products = current_cart.items.includes(:photo)
  end

  def checkout
    @order = current_user.orders.build
    @info = @order.build_info
  end

end
