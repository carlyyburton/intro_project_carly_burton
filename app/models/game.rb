class Game < ApplicationRecord
  validates :title, :sale_price, :normal_price, presence: true

  has_many :fake_games

  paginates_per 20

  def self.ransackable_attributes(auth_object = nil)
    ["normal_price", "release_date", "sale_price", "savings", "steam_rating_count", "steam_rating_percent", "title"]
  end
end
