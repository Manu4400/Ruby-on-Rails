class SupportMailbox < ApplicationMailbox
  def process
    # this method is for processing
    # mail.decoder give the body of the email that we receive 
    # mail .subject  it is the subject if the mail
    # mail.form  from address
  end
end
