# # class Vehicle
# #   attr_accessor :brand , :price
# #   def initialize(brand, price)
# #     @brand = brand
# #     @price = price
# #   end

# #   def road_tax()
    
# #     if(@brand == benz ||@brand == Benz )
# #       puts "ROAD TAX OF THIS CAR : " + " 3000000 "
# #     end
# #   end
# # end

# # class Car < Vehicle
# #   def initialize(brand, price, color)
# #     @color = color
# #     super(brand , price)
# #   end
# #   def display_details
# #     puts "Brand: #{@brand}, Price: #{@price}, Color: #{@color}"
# #   end
# #   def puts
# #     p "This is the puts method"
# #   end
# # end



# # car1 = Car.new("benz",200000,"black")
# # car1.display_details
# # puts car1.puts
# # puts car1.class.ancestors

# # puts car1.respond_to? :display_details 

# # puts car1.respond_to? :sting

# # puts "Manu".respond_to? :length
# # num =10 

# # puts  num.respond_to? :to_f
# # puts  num.respond_to? :to_s
# # puts  num.respond_to? :abs
# # puts  Math.respond_to? :sqrt

# # puts num.class # it return , num is belong to interger class



# class Base 
  
# #   def puts
# #    super
# #     print "hello"
  
# #  end
#   def initialize(name)
#     @name = name

#   end
#   def add(a,b)
#     puts a+b
#     puts "This Base method"
#   end
# end

#  b = Base.new("Manu")
# # # b.puts
# # puts b.class.ancestors
#  puts Kernel.respond_to? :puts
#  BasicObject.send(:puts) 


# class Child < Base
#     def initialize(name,age)
#       super (name)
#         @age =age
#     end
#     def display
#       puts "Name : #{@name} , Age : #{@age}"
#     end
#     def add(a,b)
#     puts a+b 
#     puts "This child method"
#   end
# end

# a = Child.new("Manu",23)
# puts a.display
# puts a.add(2,3)

# puts b.respond_to? :DelegateClass
# array = []
# puts array.method(:length).owner

# str =""

# puts str.method(:length).owner


# num = 0.122335

#  puts str.method(:==).owner



# class Base
#  def initialize(a,b)
#     @var1=a
#     @var2=b   
#  end
#  def add
#     puts @var1+@var2
#  end

# end

# b=Base.new(1,5)
# b.add


num = 0;
puts num.respond_to? :==