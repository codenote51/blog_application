class BankMailer < ApplicationMailer
  default from: 'notifications@example.com'


  def welcome_email
    @bank = params[:bank]
    @url =  'http://example.com/login'
    mail(to: @bank.email, subject: 'Welcome To My Awesome Site')
  end
end
