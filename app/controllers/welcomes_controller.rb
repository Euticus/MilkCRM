class WelcomesController < ApplicationController

    def index
        @employees = Employee.all
        
    end

    def show
        @employee = Employee.find(params[:id])
        
    end

end
