# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'net/http'
require 'json'
require 'faker'

api = 'https://www.cheapshark.com/api/1.0/deals'
uri = URI(api)
response = Net::HTTP.get(uri)
games = JSON.parse(response)

Game.destroy_all
FakeGame.destroy_all
FreeGame.destroy_all

games.each do |game|
  game_sale = Game.create!( title: game['title'],
                            sale_price: game['salePrice'],
                            normal_price: game['normalPrice'],
                            release_date: game['releaseDate'],
                            savings: game['savings'],
                            steam_rating_percent: game['steamRatingPercent'] ,
                            steam_rating_count: game['steamRatingCount'],
                            metacritic_link: game['metacriticLink'],
                            image: game['thumb'])
end

150.times do
  FakeGame.create!( title: Faker::Game.title,
                    genre: Faker::Game.genre,
                    platform: Faker::Game.platform)
end

api2 = 'https://www.freetogame.com/api/games'
uri2 = URI(api2)
response2 = Net::HTTP.get(uri2)
free_games = JSON.parse(response2)

free_games.each do |free|
  FreeGame.create!( title: free['title'],
                    thumbnail: free['thumbnail'],
                    description: free['short_description'],
                    genre: free['genre'],
                    game_url: free['game_url'])
end