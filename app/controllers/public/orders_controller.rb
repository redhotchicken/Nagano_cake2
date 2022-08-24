class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def check
    @cart_items = current_customer.cart_items
    @order = Order.new
     if params[:order][:select_address] == "0"
        @order = Order.new(order_params)
        @order.post_code = current_customer.post_code
        @order.address = current_customer.address
        @order.name = current_customer.last_name + current_customer.first_name

     elsif params[:order][:select_address] == "1"
       @order = Order.new(order_params)
       @address = Delivery.find(params[:order][:delivery_id])
       @order.post_code = @delivery.post_code
       @order.address = @delivery.address
       @order.name = @delivery.name

     elsif params[:order][:select_address] == "2"
       @order = Order.new(order_params)
       @order.save
     end

  end

  def complete
  end

  def create
     @order = Order.new(order_params)
     @order = Order.save
    # @order.postage = 800
    # @order.payment =  
    # @cart_items = current_user.cart_items.all
     
     
    # @cart_items.destroy_all
    
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
