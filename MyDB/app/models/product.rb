class Product < ApplicationRecord
  has_rich_text :feedback
  # # inbuilt validations
#  validates :stock, numericality: true
# validates :stock, length: { minimum: 10, maximum: 20 }
# validates :description, length: { maximum: 500 }

  #  validate :check_is_active_for_price
  # validate :check_is_active
  #  validates :is_active, acceptance: true

  # validates :price, numericality: { greater_than_or_equal_to: 3 }
  # validate :check_price
  # validate :check_special_character
  #  validates :is_active , acceptance: true


  # ----------------------------

#   def availability_check
#    return "stock is zero" if stock.present? && stock == 0
#  end
   


  
#   def apply_discount(discount_percent)
#     discounted_price = price
#     case discount_percent
#     when 0
#       discounted_price = price
#     when 1..10
#       discounted_price = price - (price * 0.05)
#     when 11..20
#       discounted_price = price - (price * 0.10)
#     when 21..50
#       discounted_price = price - (price * 0.20)
#     else
#       discounted_price = price - (price * 0.30)
#     end
#     puts "discounted price #{discounted_price}"
#     return discounted_price
#   end

  
#   def total_amount(discount_percent)
#     discounted_price = apply_discount(discount_percent)

    
#     puts discounted_price

#   end





  # def check_price
  #   if stock == 0 && price > 0
  #     errors.add(:stock, "must not be zero when price is greater than 0")
  #   end
  # end

  # def check_special_character
  #   if name.present? && name.match?(/[^a-zA-Z0-9]/)
  #     errors.add(:name, "must be alphanumeric only")
  #   end
  # end


#---------------------------------------------------------------------------------

# use inbuilt validation only if it is check use acceptances method that should be true
 #validates :is_active, acceptance: { message: "must be checked to activate product" }

# write custom validation only if is_active is true then only we have to add price

# def check_is_active_for_price
#   if (!is_active  && price <= 0) 
#     errors.add "Maker is_active as checked and enter the price "
#   end

# end
# write custom validation only if is_active is true


# def check_is_active
#   if is_active != true
#     errors.add "Make sure is active is checked"
#   end

# end
# description must contain only letters, numbers, and spaces
  # validates :description, format: { 
  #   with: /\A[a-zA-Z0-9\s]+\z/, 
  #   message: "must not contain special characters" 
  # }

  # use inbuilt validation only if it is check use acceptances method that should be true
  

# 23 -01 - 2026 ----> scope
scope :out_of_stock, -> { where("stock <= ?", 0) }

# scope :test_scope_for_joins{joins(name_of_the_table.where)}
# scope :test_scope ,-> query{} # in the query we can write raw query 

end