class Guest < ApplicationRecord
  belongs_to :episode
  has_many :episodes
end