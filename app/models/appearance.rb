class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    # Rating Validation
    validates :rating, presence: true
    validates :rating, inclusion: 1..5

end
