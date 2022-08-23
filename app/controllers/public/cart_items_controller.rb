class Public::CartItemsController < ApplicationController

  def index
    @cart_items = CartItem.all
    @cart_items = current_customer.cart_items
    @total = 0
  end

  def update
    @cart_item.id = current_customer.id
    @cart_item.update
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
  end

  def destroy_all
    @cart_items = CartItem.all
    @cart_items.destroy
    redirect_to public_cart_items_path
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.save
    redirect_to public_cart_items_path
  end

  private

  def cart_item_params
      params.require(:cart_item).permit(:item_id, :amount, :customer_id)
  end

end
