module Nutri
  class CustomerController < ApplicationController
    before_action :find, only: [:show]
    def index
      @customers = policy_scope(Customer)
    end

    def show

    end

    def new
      @customer = Customer.new
    end

    def create
      @customer = Customer.new(customer_params)
      @customer.nutri_id = current_user
      if @customer.save
        redirect_to customer_path(@customer)
      else
        redirect_to new_customer_path, notice: "Something is wrong"
      end
    end

    private

    def find
      @customer = Customer.find(params[:id])
      authorize  [:nutri, @customer]
    end

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :age, :email, :phone_number, :watts)
    end
  end
end
