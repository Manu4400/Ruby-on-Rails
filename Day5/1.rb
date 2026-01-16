name ="Manu"
puts name.class # print the class of the variable 'name'
puts name.object_id # print the object id of the variable 'name'

name = name + "MR" # concatenating "MR" to the string stored in 'name'

puts name.class # print the class of the updated variable 'name'
puts name.object_id # print the object id of the updated variable 'name'


# print the class of the variables of different data types
a =10
puts a.class

b =true
puts b.class

c = 10.5
puts c.class

d = [1,2,3,4,5]
puts d.class


e = {name: "Manu", age: 24}
puts e.class
puts "Name :#{e[:name]}"



