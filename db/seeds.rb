# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '3215698521', category: "japanese" }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '7856932104', category: "italian" }
la_garbure = { name: 'La Garbure', address: 'Cours Julien, 13006 Marseille', phone_number: '8201365475', category: "french" }
dragon_d_or = { name: "Le Dragon d'or", address: '56 rue Guy Moquet, 75001 Paris', phone_number: '9563201504', category: "chinese" }
chez_werner = { name: 'Chez Werner', address: 'Bruxelles', phone_number: '9632178502', category: "belgian" }

[dishoom, pizza_east, la_garbure, dragon_d_or, chez_werner].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
