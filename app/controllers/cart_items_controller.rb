class CartItemsController < ApplicationController

  def destroy
    @item = current_cart.cart_items.find_by_product_id(params[:id])
    flash[:warning] = "成功將#{@item.product.title}從購物車刪除"
    @item.destroy

    redirect_to :back
  end

end
