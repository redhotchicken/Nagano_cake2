class Admin::OrdersController < ApplicationController
  
  def show
    @order = Order.find(params[:id])
    @order_item = @order.order_items
    @total = @order_item.inject(0) { |sum, item| sum + item.price * item.amount }
    @postage = 800
  end
  
  def update
    @order = Order.find(params[:id])
    @order.update
    redirect_to admin_order_path(@order)
  end
  
end