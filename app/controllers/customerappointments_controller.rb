class CustomerappointmentsController < ApplicationController

    def index 
      @appointments = Customerappointment.all
      @clients = Client.all
      @employees = Employee.all 
      @customers = Customer.all

    end 

    def show 
      @appointments = Customerappointment.find(params[:id])

    end 

    def create
        @employees = Employee.all
        @customerappointment = Customerappointment.new(customerappointment_params)
        if @customerappointment.save
          CustomerappointmentMailer.welcome_email(@customerappointment.customer).deliver_now
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