class RemoveMetacriticLinkFromGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :metacritic_link
  end
end
