json.extract! fake_game, :id, :title, :genre, :platform, :created_at, :updated_at
json.url fake_game_url(fake_game, format: :json)
