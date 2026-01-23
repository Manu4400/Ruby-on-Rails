class Customer < ApplicationRecord
#  validates:email , presence:true
#  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }


  # Check whether email is present or not
  # def check_email
  #   if email.nil? || email.strip.empty?
  #     "Email is not present"
  #   else
  #     "Email is present"
  #   end
  # end

  # # Check whether name contains only alphabetic characters
  # def name_check
  #   if name.nil? || name.strip.empty?
  #     "Name is empty"
  #   elsif name.match?(/\A[a-zA-Z]+\z/)
  #     "Name is valid"
  #   else
  #     "Name must contain only alphabets"
  #   end
  # end

#  validates :email, profanity: true
# validates :name , profanity: true


#  scope :unquine_email, -> { distinct.where(email: "manoharmr1234@gmail.com").select(:email).distinct }
#                                         #tableCulum: modelAttribute

#    scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }

scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }

end