class Game < ApplicationRecord
  validates :title, :sale_price, :normal_price, :release_date, presence: true

  paginates_per 20
end
