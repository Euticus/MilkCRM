class WelcomesController < ApplicationController

    def index
        @employees = Employee.all
        @clients = Client.all
        @appointments = Clientappointment.all
        
    end

    def show
        @employee = Employee.find(params[:id])
        
    end

end
