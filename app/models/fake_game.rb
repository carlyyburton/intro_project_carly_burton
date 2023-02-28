class FakeGame < ApplicationRecord
  validates :title, :genre, :platform, presence:true

  #belongs_to :game, foreign_key: 'games_id'
end
