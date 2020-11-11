# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "123", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "234", category: "italian" }
homeslice =  { name: "Homeslice", address: "200 Liverpool St, London E5 6PQ", phone_number: "345", category: "italian" }
hugo =  { name: "Chez Hugo", address: "5 Cromwell Road, London W5 6EQ", phone_number: "456", category: "french" }
wasabi =  { name: "Wasabi", address: "10 Bute Street, London W6 6EQ", phone_number: "567", category: "japanese" }

[ dishoom, pizza_east, homeslice, hugo, wasabi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
