# factorial  using static
# def fact(n)
#   return 1 if n <= 1  
#   n * fact(n - 1)     
# end

# num = fact(5)
# puts num 


# factorial  using Dynamic 

# def fact(n)
#   return 1 if n <= 1  
#   n * fact(n - 1)     
# end


# puts("Enter the number")
# num = gets.chomp.to_i
# puts fact(num)

#-----------------------------------------------------------------------------------

# Reverse the string without using the method
# str="Manu"
# rev=""
# for i in 1..str.size
#   rev += str.chars[str.size-i]
# end
# puts rev

#  Reverse the string using the method

# str = "Manu"
# rev = str.reverse
# puts rev

# ------------------------------------------------------------------------------


# palindrom using method

# str = "madam"
# reve = str.reverse

# puts  str==reve ? true : false 


# palindrom without method 

str = "madam"
rev =""

for i in 1..str.size
  rev += str[str.size - i]
end

puts  str==rev ? true : false


