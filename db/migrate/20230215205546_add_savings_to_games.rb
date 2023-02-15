class AddSavingsToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :savings, :decimal
  end
end
