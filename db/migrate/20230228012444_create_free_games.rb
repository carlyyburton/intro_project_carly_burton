class CreateFreeGames < ActiveRecord::Migration[7.0]
  def change
    create_table :free_games do |t|
      t.string :id
      t.string :title
      t.string :thumbnail
      t.string :description
      t.string :genre
      t.string :game_url

      t.timestamps
    end
  end
end
