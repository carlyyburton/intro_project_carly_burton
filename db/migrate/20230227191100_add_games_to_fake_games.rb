class AddGamesToFakeGames < ActiveRecord::Migration[7.0]
  def change
    add_reference :fake_games, :games, auto_increment: true, foreign_key: true
  end
end
