class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, :inclusion => {:in => 1..5}
  # ================================================
  #   Not sure yet how to create this association:
  # ================================================
  # validates :guest_id, inclusion: { in: :episode_id, uniqueness: true } 
end