class Admin::HomesController < ApplicationController
  
  def top
    @order = Order.all
    @customer = Customer.find(params[:id])
  end
  
end
