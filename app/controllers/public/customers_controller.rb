class Public::CostomersController < ApplicationController
  
  def show
    @customer =Customer.find(params[:id])
    @customer = current_customer

  end

  def edit
  end

  def update
  end
  
  def quit
  end
  
  def withdrawal
  end
  
end
<<<<<<<<< saved version

=========

>>>>>>>>> local version