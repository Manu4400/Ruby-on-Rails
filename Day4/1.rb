name = :ruby
str = "Manu"
str = str + "MR"
=begin
name = name + :on_rails
This will cause an error because Ruby does not allow concatenation of a String and a Symbol using the '+' operator.
=end

puts name.class
puts str.class
puts name.object_id
puts str.object_id



5.times do 
  puts str.object_id
end

class Person
  @@count = 0
  attr_accessor :name, :id, :present

  def initialize
    @@count += 1
  end

  def display
    puts "Name: #{@name}, Employee ID: #{@id}, Attendance: #{@present}"
  end

  def self.count
    puts "Total Employees: #{@@count}"
  end
end

p1 = Person.new
p1.name = "Manu"
p1.id = 1
p1.present = true
p1.display

p2 = Person.new
p2.name = "Ravi"
p2.id = 2
p2.present = false
p2.display

#In ruby there is no return type for methods. By default every method returns the value of the last evaluated expression.

#single line comment
=begin
This is a
multi-line comment 
in Ruby.
=end