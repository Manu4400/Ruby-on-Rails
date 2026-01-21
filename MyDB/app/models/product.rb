class Product < ApplicationRecord

  
  def availability_check
    stock.present? && stock > 0
  end

  
  def apply_discount(discount_percent)
    case discount_percent
    when 0
      price
    when 1..10
      price - (price * 0.05)
    when 11..20
      price - (price * 0.10)
    when 21..50
      price - (price * 0.20)
    else
      price - (price * 0.30)
    end
  end

  
  def total_amount(discount_percent)
    return 0 unless availability_check

    discounted_price = apply_discount(discount_percent)

    
    discounted_price

  end
end
