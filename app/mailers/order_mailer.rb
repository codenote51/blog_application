class OrderMailer < ApplicationMailer
  default from: 'nancykushwah228@gmail.com'
  def new_order_email
    attachments.inline['NK.jpg'] = File.read('/home/nancy/nancy/images/Nk.jpg')
    @order = params[:order]
    @url  = 'http://example.com/login' 
    mail(to: @order.email, subject: 'Welcome to My Awesome Site')
  end
end
