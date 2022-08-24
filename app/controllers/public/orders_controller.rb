class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def check
    @cart_items = current_customer.cart_items.all
    @order = Order.new
    @total = @cart_items.inject(0) { |sum, item| sum + item.subtotal }
    @postage = 800
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
     @order.customer_id = current_customer.id
     @cart_items = current_customer.cart_items.all
     @postage = 800
     @total = @cart_items.inject(0) { |sum, item| sum + item.subtotal }
     @order.payment = (@total + @postage)
     if @order.save
        @cart_items.each do |cart|
            # 取り出したカートアイテムの数繰り返します
            # order_item にも一緒にデータを保存する必要があるのでここで保存します
            order_item = OrderItem.new
            order_item.item_id = cart.item_id
            order_item.order_id = @order.id
            order_item.amount = cart.amount
            # 購入が完了したらカート情報は削除するのでこちらに保存します
            order_item.price = cart.item.tax_price
            # カート情報を削除するので item との紐付けが切れる前に保存します
            order_item.save
        end
            redirect_to public_orders_complete_path
            @cart_items.destroy_all
            # ユーザーに関連するカートのデータ(購入したデータ)をすべて削除します(カートを空にする)

     else
       @order = Order.new(order_params)
       render:new
     end
  end

  def index
    @orders = current_customer.orders.all
    @postage = 800

  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:payment_type, :post_code, :address, :name, :customer_id, :payment, :status, :postage)
  end

end
