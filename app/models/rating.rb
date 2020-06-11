class Rating < ApplicationRecord
    belongs_to :episode
  validates_presence_of :episode 
  validates_inclusion_of :value, :in => 1..10
end
