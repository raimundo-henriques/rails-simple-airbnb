# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Erasing all pre-existing flats"
Flat.destroy_all

puts "Creating flats"
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

4.times do
  Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: (50..100).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
end

puts "Done"
