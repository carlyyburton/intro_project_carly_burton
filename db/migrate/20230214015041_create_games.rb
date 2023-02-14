class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.decimal :sale_price
      t.decimal :normal_price
      t.date :release_date
      t.integer :steam_rating_percent
      t.integer :steam_rating_count
      t.string :image

      t.timestamps
    end
  end
end
