class Admin::CustomersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  
  def index
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def correct_user
    @customer = Customer.find(params[:id])
    redirect_to public_root_path unless @customer == current_admin
  end
end
