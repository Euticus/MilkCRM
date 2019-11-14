class WelcomesController < ApplicationController

    def index
        @employees = Employee.all
        @clients = Client.all
        @appointments = Clientappointment.all
        @employee = Employee.find(session[:employee_id])
        
    end

    def show
        @employee = Employee.find(params[:id])
        
    end

end
