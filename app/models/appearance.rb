class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, inclusion: { in: 1..5 ,
    message: "Sorry rating needs to be from 1 to 5." }


end
