class AddMetacriticLinkToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :metacritic_link, :string
  end
end
