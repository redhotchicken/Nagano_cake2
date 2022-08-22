class Public::ItemsController < ApplicationController

  def index
   @items = Item.all
  end

  def show
  end

  private

 def item_params
   params.require(:item).permit(:item_image, :name, :price)
 end

end
