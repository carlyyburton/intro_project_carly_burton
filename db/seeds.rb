# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'net/http'
require 'json'

api = 'https://www.cheapshark.com/api/1.0/deals'

uri = URI(api)
response = Net::HTTP.get(uri)

games = JSON.parse(response)

Game.destroy_all

games.each do |game|
  game_sale = Game.create!( title: game['title'],
                            sale_price: game['salePrice'],
                            normal_price: game['normalPrice'],
                            release_date: game['releaseDate'],
                            steam_rating_percent: game['steamRatingPercent'] ,
                            steam_rating_count: game['steamRatingCount'],
                            image: game['thumb'])
end