class DropFakeGameTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :fake_games
  end
end
