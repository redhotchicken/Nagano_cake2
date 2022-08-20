class Public::DeliveriesController < ApplicationController

  def index
    @deliveries=Delivery.all
  end

  def edit
    @delivery.id = current_customer.id
    @delivery = Derivery.find(params[:id])

  end

  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.id = current_customer.id
    @delivery.save
  end

  def update
    @delivery.id = current_customer.id
    @delivery.update
  end

  def destroy
    @delivery.id = current_customer.id
    @delivery.destroy
  end

  private

  def delivery_params
    params.require(:deliveri).permit(:name, :post_code, :address)
  end

end
