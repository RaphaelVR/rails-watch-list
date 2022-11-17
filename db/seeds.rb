# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require 'json'
# require 'open-uri'

# url = 'http://tmdb.lewagon.com/movie/top_rated'
# user_serialized = URI.open(url).read
# user = JSON.parse(user_serialized)

# puts "#{user['original_title']} - #{user['bio']}"

50.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://source.unsplash.com/random/900×700/?movies',
    rating: rand(0..10)
  )
  puts 'creating movie'
end
