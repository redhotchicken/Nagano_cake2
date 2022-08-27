class Public::ItemsController < ApplicationController

  def index
    @items = Item.all
    @items = Item.page(params[:page]).per(8)
    @items_all = Item.all
    @genres = Genre.all
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @cart_item_id = current_customer.id
    @genres = Genre.all
  end

  private

 def item_params
   params.require(:item).permit(:item_image, :name, :price)
 end

 def cart_item_params
    params.require(:cart_item).permit(:item_id, :customer_id, :amount)
 end

 def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
 end

end
