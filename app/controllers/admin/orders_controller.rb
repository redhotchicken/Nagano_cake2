class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!
  
  def show
    @order = Order.find(params[:id])
    @order_item = @order.order_items
    @total = @order_item.inject(0) { |sum, item| sum + item.price * item.amount }
    @postage = 800  
  end
  
  def update
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    if  @order.update(order_params)
      if @order.status == "waiting_for_payment"
        @order_items.update(make_status: "production_not_allowed")
      elsif @order.status == "payment_confirmation"
        @order_items.update(make_status: "waiting_for_production")
      end
      redirect_to admin_order_path(@order)
    else
      render "show"
    end
  end
  
  private
  
  def order_params
    params.require(:order).permit(:status)
  end
    
  
end