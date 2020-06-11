class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  # validates :Guest.name, :presence => true, :uniqueness => { :scope => :user_id }
end
