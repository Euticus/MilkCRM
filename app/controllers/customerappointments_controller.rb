class CustomerappointmentsController < ApplicationController

    def index
      @appointments = Customerappointment.all

    end 

    def show 
      @appointments = Custemerappointment.find(params[:id])
    end

    def edit
      @customerappointment = Customerappointment.find(params[:id])
    end

    def create
        @employees = Employee.all
        @customerappointment = Customerappointment.new(customerappointment_params)
        if @customerappointment.save
          redirect_to customerappointments_path
        else
          render :new
        end
  
      end 

private 

def customerappointment_params
    params.require(:customerappointment).permit(:description, :time, :date, :location, :customer_id, :employee_id)
end







end 