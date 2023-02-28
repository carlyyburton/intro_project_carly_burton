class FreeGame < ApplicationRecord
  validates :title, :description, :genre, presence:true
end
