class OrderMailer < ApplicationMailer

  def notify_order_placed(order)
    @order = order
    @user = @order.user
    @order_items = @order.items
    @order_info = @order.info

    mail(to: @user.email, subject: "[火車的二手拍賣] 感謝您購買")
  end

end
