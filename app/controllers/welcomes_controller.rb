class WelcomesController < ApplicationController

    def index
        @employees = Employee.all
        @clients = Client.all
        @customers = Customer.all
        @appointments = Clientappointment.all
        @cappointments = Customerappointment.all
        @employee = Employee.find(session[:employee_id])
        
    end

    def show
        @employee = Employee.find(params[:id])
        
    end

end
