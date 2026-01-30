class ProductMailer < ApplicationMailer
    def welcome_mailer
    @product = params[:product]
    mail(to:@product.email,subject:"Welcome")
  end
end
