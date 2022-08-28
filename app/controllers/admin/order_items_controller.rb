class Admin::OrderItemsController < ApplicationController
  
  def update
    @order_item = OrderItem.find(params[:id])
    @order = @order_item.order
    if @order_item.update(order_item_params)
      if @order_item.make_status == "under_construction"
        @order.update(status: "production")
      elsif @order.order_items.all?{|order_item|order_item.make_status == "production_completed"}
        @order.update(status: "preparing_to_ship")
      end
      redirect_to admin_order_path(@order)
    else
      render "show"
    end
  end
  
  private
  
  def order_item_params
    params.require(:order_item).permit(:make_status)
  end
  
end
