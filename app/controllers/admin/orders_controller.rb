class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!
  
  def show
  end
  
  def update
    @order = Order.find(params[:id])
    @order.update
    redirect_to admin_order_path(@order)
  end
  
end