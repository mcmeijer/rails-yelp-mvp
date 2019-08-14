# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
  restaurant = Restaurant.new(
    name: Faker::Music::RockBand.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
  restaurant.save!
  5.times do
    review = Review.new(
      content: Faker::TvShows::RuPaul.quote,
      rating: rand(Review::RATINGS),
      restaurant: restaurant
    )
    review.save!
  end
end

# ne pas oubleir de mettre Classe::MAVARIABLE.whaaat
