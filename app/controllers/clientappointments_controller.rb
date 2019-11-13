class ClientappointmentsController < ApplicationController
    def index 
      @appointments = Clientappointment.all
      @clients = Client.all
      @employees = Employee.all 
      @customers = Customer.all

    end

    def show 
      @appointments = Clientappointment.find(params[:id])

    end 

    def new 
      @clientappointment = Clientappointment.new
      @customerappointment = Customerappointment.new
    end 

    def create
  
      @employees = Employee.all
      @clientappointment = Clientappointment.new(clientappointment_params)
 
      if @clientappointment.save
        ClientappointmentMailer.welcome_email(@clientappointment.client).deliver_now
        redirect_to clientappointments_path
      else
        @customerappointment = Customerappointment.new 
        render :new
      end

    end 

    def edit 
      @clientappointment = Clientappointment.find(params[:id])
    end 

    def update 
      @clientappointment = Clientappointment.find(params[:id])
      @clientappointment.update(clientappointment_params)
      redirect_to clientappointments_path
    end 

    private 

    def clientappointment_params
        params.require(:clientappointment).permit(:description, :time, :date, :location, :client_id, :employee_id)
    end 

end