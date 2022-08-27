class Public::CustomersController < ApplicationController
  
  def show
    @customer =Customer.find(params[:id])
    @customer = current_customer

  end

  def edit
   @customer = current_customer

  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
      redirect_to public_customer_path(@customer)
  end

  def quit
    @customer = current_customer
  end

  def withdrawal
    @customer = Customer.find(params[:id])
    @customer.update(is_deleted: true)
    reset_session
    redirect_to public_root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_kana, :first_kana, :post_code, :address, :tell, :email)
  end

end
