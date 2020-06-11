class Guest < ApplicationRecord
    has_many :apperances 
    has_many :episodes 
end 

