class Admin::CustomersController < ApplicationController
  
  def index
  end
  
  def show
  end
  
  def edit
    
    @customer = Customer.find(params[:id])
  end
  
  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to admin_customer_path(customer)
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_kana, :first_kana, :post_code, :address, :tell, :email, :is_deleted)
  end
  
end
