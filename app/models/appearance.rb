class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates :rating, inclusion: {in: %w(1..5)}
end
