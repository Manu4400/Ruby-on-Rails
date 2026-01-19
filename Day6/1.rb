
# # for loop

# for i in 10..15 # i in range 10 to 15
#   puts "this is for loop #{i}"
# end

# # for using condition
# # i =0 
# # for i<10 
# #   puts i
  
# # end


# # while loop
# i=0
# while (i<5)
#   puts "this is while loop"
#   i +=1
# end

# # loop
# j=0
# loop do 
# puts "this is loop "
# j+=1
# break if j>10
# end

# #until loop
# k =0 
# until k>5
#   puts "this is until loop"
#   k +=1
# end
# # for loop with redo 
# b =0 
# for i in 11..20
  
#  if i ==12&& b<1
#   puts "after redo #{i}"
#   b +=1
#   redo
# end
# puts "this for loop using redo #{i}"
# end



# # times loop
# 10 .times do
#   puts "this is times loop"
# end


# all methods 

# 1. select , reject
 arr=[10,20,30,40,50]
arr2=[]
puts arr.select { |a|  a<30 }

puts "----------------------------------------------------------------"
arr2=arr.select { |a|  a>30 }
arr2 .each do |i|
  puts "this is the value #{i} after select method"
end
puts "----------------------------------------------------------------"
arr3=arr.reject { |a|  a<30 }
arr3 .each do |i|
  puts "this is the value #{i} after reject method"
end
puts "----------------------------------------------------------------"
arr4=arr.reject! { |a|  a>30 }
arr4 .each do |i|
  puts "this is the value #{i} after reject! method"
end
puts "----------------------------------------------------------------"

# all method
arr5 = [1,2,3,4,5]
puts arr5.all? { |a| a<6 } # explanation : if all conditions are true it will return true
puts "----------------------------------------------------------------"

# any method
puts arr5.any? { |a| a<6 } # explanation : if any one condition is true it will return true
puts "----------------------------------------------------------------"

# map method
arr6 = [1,2,3,4,5]
arr7 = arr6.map { |a| a*2 }
arr7 .each do |i|
  puts "this is the value #{i} after map method"
end
p arr6
puts "----------------------------------------------------------------"
# collect method
arr8 = arr6.collect { |a| a+5 }
arr8 .each do |i|

  puts "this is the value #{i} after collect method"
end
p arr6

puts "----------------------------------------------------------------"
# each method
arr9 = [1,2,3,4,5]
arr10 = arr9.each { |a| a*3 }
arr10 .each do |i|
  puts "this is the value #{i} after each method"
end
p arr9
puts "----------------------------------------------------------------"

