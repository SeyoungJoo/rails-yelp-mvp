# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  attributes = {
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    }
  restaurant = Restaurant.create!(attributes)

  review_attributes = {
    content: Faker::Name.name,
    rating: rand(1..5), 
    restaurant: restaurant
  }
  Review.create!(review_attributes)
end
