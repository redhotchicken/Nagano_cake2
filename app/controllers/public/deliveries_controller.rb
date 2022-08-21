class Public::DeliveriesController < ApplicationController

  def index
    @deliveries = Delivery.all
    @delivery = Delivery.new(delivery_params)
    @delivery.save
  end

  def edit
    @delivery.id = current_customer.id
    @delivery = Derivery.find(params[:id])

  end

  def create
    @delivery = Delivery.new(delivery_params)
    if @delivery.save
    redirect_to public_deliveries_path
    end
  end

  def update
    @delivery = Delivery.find(params[:id])
    @delivery.update
  end

  def destroy
    @delivery.id = current_customer.id
    @delivery.destroy
  end

  private

  def delivery_params
    params.require(:delivery).permit(:member_id, :name, :post_code, :address)
  end

end
