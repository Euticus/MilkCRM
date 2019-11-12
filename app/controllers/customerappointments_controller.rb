class CustomerappointmentsController < ApplicationController

    def index 

    end 

    def show 

    end 

    def create
        @employees = Employee.all
        @customerappointment = Customerappointment.new(customerappointment_params)
        if @customerappointment.save
          redirect_to customerappointment_path(@customerappointment)
        else
          render :new
        end
  
      end 

private 

def customerappointment_params
    params.require(:customerappointment).permit(:description, :time, :date, :location, :customer_id, :employee_id)
end







end 