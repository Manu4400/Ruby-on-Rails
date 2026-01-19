# Ruby Loops & Enumerable Methods

This project demonstrates basic **Ruby loops** and **Enumerable methods**.
These concepts are fundamental in Ruby and are commonly used in **Ruby on Rails applications**.

---

## Loops in Ruby

### For Loop
```ruby
for i in 10..15
  puts "this is for loop #{i}"
end
```

### While Loop
```ruby
i = 0
while i < 5
  puts "this is while loop"
  i += 1
end
```

### Loop Do
```ruby
j = 0
loop do
  puts "this is loop"
  j += 1
  break if j > 10
end
```

### Until Loop
```ruby
k = 0
until k > 5
  puts "this is until loop"
  k += 1
end
```

### For Loop with redo
```ruby
b = 0
for i in 11..20
  if i == 12 && b < 1
    puts "after redo #{i}"
    b += 1
    redo
  end
  puts "this for loop using redo #{i}"
end
```

### Times Loop
```ruby
10.times do
  puts "this is times loop"
end
```

---

## Ruby Enumerable Methods

### select
```ruby
arr = [10,20,30,40,50]
puts arr.select { |a| a < 30 }
```

### reject
```ruby
arr3 = arr.reject { |a| a < 30 }
```

### reject!
```ruby
arr4 = arr.reject! { |a| a > 30 }
```

### all?
```ruby
arr5 = [1,2,3,4,5]
puts arr5.all? { |a| a < 6 }
```

### any?
```ruby
puts arr5.any? { |a| a < 6 }
```

### map
```ruby
arr6 = [1,2,3,4,5]
arr7 = arr6.map { |a| a * 2 }
```

### collect
```ruby
arr8 = arr6.collect { |a| a + 5 }
```

### each
```ruby
arr9 = [1,2,3,4,5]
arr10 = arr9.each { |a| a * 3 }
```

---

## Usage in Rails Application

These methods are frequently used in Rails applications for:
- Iterating ActiveRecord collections
- Filtering records
- Transforming data for views

Example:

```erb
<% @users.each do |user| %>
  <%= user.name %>
<% end %>
```

---

## Conclusion

- Loops help repeat tasks
- Enumerable methods improve code readability
- These concepts are essential for Ruby on Rails development
