class CreateFakeGames < ActiveRecord::Migration[7.0]
  def change
    create_table :fake_games do |t|
      t.string :title
      t.string :genre
      t.string :platform

      t.timestamps
    end
  end
end
