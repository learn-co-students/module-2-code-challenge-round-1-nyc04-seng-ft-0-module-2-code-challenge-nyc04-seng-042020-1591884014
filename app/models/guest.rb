class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def appearance_rating(episode)
    self.appearances.find do |appear|
      appear.episode_id == episode
    end.rating
  end

  def self.all_ratings(guest)
    guest.appearances.map { |rate| rate.rating }
  end

  def self.average_rating(guest)
    guest.appearances.reduce(0) { |sum, num|  sum + num.rating } / all_ratings(guest).length.to_f
  end
end
