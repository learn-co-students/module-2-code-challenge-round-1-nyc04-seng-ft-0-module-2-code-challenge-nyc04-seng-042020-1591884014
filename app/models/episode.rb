class Episode < ApplicationRecord
    has_many :Appearances
    has_many :Guests, through: :Appearances
    
end


# Guests and Episodes have a many to many relationship through Appearances. 
# A single Appearance belongs to one Guest and one Episode.
