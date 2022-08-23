class Public::OrdersController < ApplicationController
  
  def new
    @order = Order.new
  end
  
  def check
    @order = Order.new
  
    @order.post_code = current_customer.post_code
    @order.address = current_customer.address
    @order.name = current_customer.name
    @order.payment_type = current_customer.payment_type
  end
  
  def complete
  end
  
  def create
     @order = Order.new(order_params)
     @order = Order.save
  end
  
  def index
  end
  
  def show
  end
  
  private
  
  def order_params
    params.require(:order).permit(:payment_type, :post_code, :address, :name, :customer_id)
  end
  
end
