# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
100.times do
  movies = Movie.create!(name: Faker::Movie.title, year: Faker::Date.between(from: 1900, to: 2020), synopsis: Faker::Lorem.paragraph_by_chars, director: Faker::Name.name, allocine_rating: Faker::Number.decimal(l_digits: 1), already_seen: false, my_rating: nil)
end
