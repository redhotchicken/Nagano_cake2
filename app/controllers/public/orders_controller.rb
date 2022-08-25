class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def check
    @cart_items = current_customer.cart_items.all
    @total = @cart_items.inject(0) { |sum, item| sum + item.subtotal }
    @postage = 800
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
     @cart_items = current_customer.cart_items.all
     @order = Order.new(order_params)
     @total = @cart_items.inject(0) { |sum, item| sum + item.subtotal }
     @postage = 800
     @order.payment = (@total+@postage)
    if @order.save
      cart_items.each do |cart|
        order_item = OrderItem.new
        order_item.item_id = cart.item_id
        order_item.order_id = @order.id
        order_item.order_amount = cart.amount
        order_item.save
      end
      redirect_to public_orders_complete_path
      cart_items.destroy_all
      # ユーザーに関連するカートのデータ(購入したデータ)をすべて削除します(カートを空にする)
    else
      @order = Order.new(order_params)
      render :new
    end
  end

  def index
    @orders = current_customer.orders.all

  end

  def show


  end

  private

  def order_params
    params.require(:order).permit(:payment_type, :post_code, :address, :name, :customer_id, :payment, :postage, :status)
  end

end
