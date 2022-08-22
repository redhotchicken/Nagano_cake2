class Public::ItemsController < ApplicationController

  def index
   @items = Item.page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new(params[:cart_item_params])
  end

  private

 def item_params
   params.require(:item).permit(:item_image, :name, :price)
 end
 
 def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
 end

end
