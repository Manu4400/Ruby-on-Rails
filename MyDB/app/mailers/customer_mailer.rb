class CustomerMailer < ApplicationMailer
  def welcome_mailer
    @customer = params[:customer]
    mail(to:@customer.email,subject:"Welcome")
  end
end
