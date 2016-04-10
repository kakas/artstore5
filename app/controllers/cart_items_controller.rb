class CartItemsController < ApplicationController

  def update
    @item = current_cart.cart_items.find_by_product_id(params[:id])
    @item.update(item_params)

    redirect_to carts_path
  end

  def destroy
    @item = current_cart.cart_items.find_by_product_id(params[:id])
    flash[:warning] = "成功將#{@item.product.title}從購物車刪除"
    @item.destroy

    redirect_to :back
  end

  private

  def item_params
    params.require(:cart_item).permit(:quantity)
  end

end
