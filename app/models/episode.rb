class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def avg
    ratings = Appearance.where(episode_id: self.id).map do |a|
      a.rating
    end
    ratings.sum/ratings.size.to_f
  end
end
