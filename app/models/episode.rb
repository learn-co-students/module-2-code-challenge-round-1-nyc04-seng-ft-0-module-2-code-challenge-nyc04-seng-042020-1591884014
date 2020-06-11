class Episode < ApplicationRecord
  has_many :guests, through: :episodes
end