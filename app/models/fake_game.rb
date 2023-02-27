class FakeGame < ApplicationRecord
  validates :title, :genre, :platform, presence:true
end
