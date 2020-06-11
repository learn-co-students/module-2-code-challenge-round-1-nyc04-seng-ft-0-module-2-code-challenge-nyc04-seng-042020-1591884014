class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "must be between 1 and 5" }
end
