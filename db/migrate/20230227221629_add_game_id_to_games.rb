class AddGameIdToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :games_id, :int, auto_increment: true
  end
end
