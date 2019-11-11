class ClientappointmentsController < ApplicationController
    def index 

    end

    def show 

    end 

    def new 
      @clientappointment = Clientappointment.new

    end 

    def create
      @employees = Employee.all
      @clientappointment = Clientappointment.new(clientappointment_params)
      if @clientappointment.save
        redirect_to clientappointment_path(@clientappointment)
      else
        render :new
      end

    end 

    private 

    def clientappointment_params
        params.require(:clientappointment).permit(:description, :time, :date, :location, :client_id, :employee_id)
    end 

end