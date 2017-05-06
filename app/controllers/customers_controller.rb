class CustomersController < ApplicationController
  skip_before_action :user_authenticate_from_token!

  def index
   customers = Customer.all
   render json: customers
 end

  def show
     customer = Customer.find(params[:id})
     render json: customer
  end 
 
 private

  def customer_params
   
  end

end
