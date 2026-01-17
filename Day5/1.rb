# ===============================
# String object_id & immutability
# ===============================

name = "Manu"
puts name.class
puts name.object_id

name = name + "MR"
puts name.class
puts name.object_id
# New object is created → different object_id

# ===============================
# Data types in Ruby
# ===============================

a = 10
puts a.class        # Integer

b = true
puts b.class        # TrueClass

c = 10.5
puts c.class        # Float

d = [1, 2, 3, 4, 5]
puts d.class        # Array

e = { name: "Manu", age: 24 }
puts e.class        # Hash
puts "Name: #{e[:name]}"

# ===============================
# User Input
# ===============================

puts "Enter your name:"
user_name = gets.chomp
puts "Hello, #{user_name}!"

# ===============================
# Class & Object
# ===============================

class Student
  attr_accessor :name, :age

  def display
    puts "Name of the student is #{name} and age is #{age}"
  end
end

s1 = Student.new

puts "Enter student name:"
s1.name = gets.chomp

puts "Enter student age:"
s1.age = gets.chomp.to_i

s1.display

# ===============================
# Creating multiple objects
# ===============================

students = []

for i in 1..3
  student = Student.new

  puts "Enter name of student #{i}:"
  student.name = "ramu"

  puts "Enter age of student #{i}:"
  student.age = 12

  students << student
end

students.each(&:display)

# ===============================
# Variables & comments
# ===============================

name = "rahul"
id = 125
flag = true

puts name
puts id

print name
print id

# ===============================
# String interpolation & casting
# ===============================

num = 100
puts "#{name} id : #{num} it #{flag}"

puts name + num.to_s + flag.to_s

# ===============================
# Method & method chaining
# ===============================

puts "Enter two numbers:"
num1 = gets.chomp.to_i
num2 = gets.chomp.to_i

def multiply(a, b)
  a * b
end

puts multiply(num1, num2)

# ===============================
# Array input
# ===============================

arr = []
5.times do
  arr << gets.chomp.to_i
end

arr.each { |x| puts x }

# ===============================
# Symbol
# ===============================

sym = gets.chomp.to_sym
puts sym.class
