class CartItemsController < ApplicationController

  def update
    @item = current_cart.find_cart_item(params[:id])
    if @item.product.quantity >= item_params[:quantity].to_i
      @item.update(item_params)
      flash[:notice] = "成功變更數量"
    else
      flash[:warning] = "數量不足以加入購物車"
    end

    redirect_to carts_path
  end

  def destroy
    @item = current_cart.find_cart_item(params[:id])
    flash[:warning] = "成功將#{@item.product.title}從購物車刪除"
    @item.destroy

    redirect_to :back
  end

  private

  def item_params
    params.require(:cart_item).permit(:quantity)
  end

end
