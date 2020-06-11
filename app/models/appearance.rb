class Appearance < ApplicationRecord
    belongs_to :guest 
    belongs_to :episode 

    #validates :rating, inclusion: {}
    validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}

    validates :guest_id, uniqueness: {
        scope: :episode_id , 
        message: "Only one guest per episode is allowed"
    }

end
