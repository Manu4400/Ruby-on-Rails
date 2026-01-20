

Product.create([
  {
    name: "Sample Product",
    description: "This is a seeded product",
    price: 19.99,
    stock: 100,
    is_active: true
  },
  {
    name: "Another Product",
    description: "This is another seeded product",
    price: 29.99,
    stock: 50,
    is_active: true
  }
])


10.times do
  Product.create(
    name: Faker::Commerce.product_name,
    description: "This sample product is generated using the faker gem",
    price: Faker::Commerce.price(range: 1000..10000),
    stock: rand(10..200),
    is_active: [true, false].sample
  )
end