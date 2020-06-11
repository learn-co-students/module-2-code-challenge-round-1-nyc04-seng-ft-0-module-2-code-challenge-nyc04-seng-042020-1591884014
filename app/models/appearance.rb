class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, :inclusion => {:in => 1..5, :message => "Value should be between 1 and 5"}
    validates_uniqueness_of :guest_id, :scope => :episode_id
end
