class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  # The rating on an Appearance should be between 1 and 5 (inclusive - 1 and 5 are okay).

# Add a validation to ensure that the rating is between 1 and 5.
# Add handling for this error to the Appearance create action.
# The validation error should be shown on the Appearance creation form when a user attempts to save an appearance with an invalid rating.



  validates :rating, inclusion: {in: 1..5, message: "Rating must be 1 to 5"}
  validates :guest_id, uniqueness: {
    scope: :episode_id,
    message: "Guest already in that episode"
  }

  def find_guest(id)
    guest = Guest.find(id)
  end

  def find_episode(id)
    episode = Episode.find(id)
  end
end
