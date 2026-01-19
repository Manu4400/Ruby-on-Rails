# Ruby Loops & Enumerable Methods

This file contains simple examples of Ruby loops and enumerable methods.
These are basic concepts and are used very often in Ruby on Rails applications.

---

## Ruby Loops

### For Loop
ruby
for i in 10..15
  puts i
end


### While Loop
```ruby
i = 0
while i < 5
  puts i
  i += 1
end
```

### Loop Do
```ruby
j = 0
loop do
  puts j
  j += 1
  break if j > 10
end
```

### Until Loop
```ruby
k = 0
until k > 5
  puts k
  k += 1
end
```

### Times Loop
```ruby
10.times do
  puts "Hello"
end
```

---

## Enumerable Methods

### select
```ruby
arr = [10,20,30,40,50]
arr.select { |a| a < 30 }
```

### reject
```ruby
arr.reject { |a| a > 30 }
```

### all?
```ruby
arr = [1,2,3,4,5]
arr.all? { |a| a < 6 }
```

### any?
```ruby
arr.any? { |a| a == 3 }
```

### map / collect
```ruby
arr.map { |a| a * 2 }
```

### each
```ruby
arr.each do |a|
  puts a
end
```

---

## Used in Rails

These loops and methods are used in Rails to:
- Display records in views
- Filter data from database
- Process collections

Example:
```pluck

Fetches only selected columns from database

@products = Product.limit(10)
@prices = Product.limit(10).pluck(:price)
```
---


