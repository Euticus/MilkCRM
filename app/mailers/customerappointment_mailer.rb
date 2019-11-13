class CustomerappointmentMailer < ApplicationMailer
    default from: 'jayr.stewart@live.com'
 
  def welcome_email(user)
    @user = params[:customer]
    @url  = '/'
    mail(to: @user.email, subject: 'Appointment created using MilkCRM')
  end
end
