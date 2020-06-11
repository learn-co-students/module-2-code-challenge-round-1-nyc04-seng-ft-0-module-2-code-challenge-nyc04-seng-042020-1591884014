class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_appearance_rating
        sum = 0 
        self.appearances.each do |app|
            sum = app.rating + sum
        end
        sum.to_f / self.appearances.count
        # reduce(0) { |sum, num| sum + num } / (self.appearances.count)
    end
end
