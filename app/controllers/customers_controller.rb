class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def new 
        @customer = Customer.new
      end 
  
      def create
        @customer = Customer.new(customer_params)
        if @customer.save
          redirect_to client_path(@customer)
        else
          render :new
        end
      end

    def edit
        @customer = Customer.find(params[:id])
    end

    def update
        @customer = Customer.find(params[:id])
        @customer.update(customer_params)
        redirect_to customers_path
    end



    private

    def customer_params
        params.require(:customer).permit(:name, :phone, :address, :budget)
    end
end