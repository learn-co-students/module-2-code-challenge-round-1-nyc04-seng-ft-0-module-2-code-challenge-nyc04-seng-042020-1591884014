class Guest < ApplicationRecord
    has_many :Appearance
    has_many :Episodes, through: :Appearance

end

# Guests and Episodes have a many to many relationship through Appearances. 
# A single Appearance belongs to one Guest and one Episode.