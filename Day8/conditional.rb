# all condition statement

# 1. if condition
stock = 0
flag = false
if stock > 0
  flag = true
else
  puts "item is out of stocks"
end

puts flag

# 2. Ternary operator
is_active = false

puts is_active ? "active state" : "not active state";

price = 50
discount = 0
if price > 30
 discount = 5
elsif price >= 100
  discount = 10
elsif price >= 500
  discount = 30
else 
  discount = 40
end

puts discount


mrp =100
dis =0 
case 
when mrp > 20 &&  mrp < 110
  dis = 20
 
when mrp > 10 && mrp <20
  dis = 10

else 
  dis =0 
end
puts dis



stock = 15
unless stock <0
  puts "Stock is unavaliable"
else
  puts "Stock"
end


email =nil

unless email
  puts "email unavaliable"
else
  puts "email is present"
end



# class Grandpappa
#   def wealth
#     "grandpappa was rich"
#   end
# end

class Pappa 

  def length
    puts "hii"
  end
 
end

class Me < Pappa
  def length
  
    puts "My Height"
  end


 
end

m = Me.new
puts m.length
puts m.clone
# puts m.respond_to?(:)
# puts m.respond_to?(:puts)
# puts Me.ancestors
# puts m.respond_to?(:wealth)
# puts m.respond_to?(:clone)
# puts m.respond_to?(:equal?)

a = Object.new
puts m.respond_to?(:puts)





