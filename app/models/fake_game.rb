class FakeGame < ApplicationRecord
  validates :title, :genre, :platform, presence:true

  belongs_to :game
end
