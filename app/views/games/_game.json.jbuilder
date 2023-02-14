json.extract! game, :id, :title, :sale_price, :normal_price, :release_date, :steam_rating_percent, :steam_rating_count, :image, :created_at, :updated_at
json.url game_url(game, format: :json)
