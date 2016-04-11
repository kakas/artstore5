class ProductsController < ApplicationController

  def index
    @products = Product.includes(:photo)
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])

    if !current_cart.items.include?(@product)
      flash[:success] = "你已成功將#{@product.title}加入購物車"
      current_cart.add_product_to_cart(@product)
    else
      flash[:warning] = "你的購物車內已有此商品"
    end

    redirect_to :back
  end

end