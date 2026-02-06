# # Online Ruby Editor for free
# # Write, Edit and Run your Ruby code using Ruby Online Compiler

# puts "Hello, World!"

# a= Array.new(5,"Ruby")

# puts a

# puts a.size # give the size of array and lenght is also work's same

# a << 10 # it will add the element at the end
# puts a[a.size - 1]

# a.unshift(20)
# puts a[0] # it will add the element at the begining

# arr1 = []
# arr1.unshift(a) # revers the element 
# puts arr1

# a.insert(0,100) # insert the element at given index i.e [index,value]
# a.insert(0,101)
# puts a


# b = a.pop # delete the last element in the array
# puts b

# arr = []
# puts arr.pop

# ashift = a.shift # remove the first element in then array
# puts ashift

# c= a.delete(101) # Iterates entire array and removes matches
# puts c
# d=0
# a.unshift(d)
# puts a

# e = a.delete_at(1) # Delete element at index.
# puts e 


# arr = [1,2,3,4]
# sum =0 
# arr.each{|n|  sum +=n} #Iterates through array. 
# puts sum
# max = arr[0]
# max_idx =0 
# arr.each_with_index do |val, idx|# index and value 
  
#   if(val > max )
#     max = val 
#     max_idx = idx
#   end

#   # puts "#{idx} => #{val}"
# end
# puts max_idx 


def eveno(n)
  n.even?
end

puts eveno(4)
