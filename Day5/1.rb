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

puts "Enter your name:"
UserName =gets.chomp
puts "Hello, #{UserName}!"


class Student 
  attr_accessor :name,:age

  def display
    puts "Name of the student is #{name} and age is #{age}"
  end
end

s1 =Student.new

puts"Enter student name :"
s1.name = gets.chomp

puts"Enter student age :"
s1.age = gets.chomp.to_i



for i in 1..3

 s[i] = Student.new
puts "Enter name of student #{i}:"


