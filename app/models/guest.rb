class Guest < ApplicationRecord
    has_many :appearances 
    has_many :episodes, through: :appearances


    #helper method to find the guest's appearance rating of a particular episode
    def appearance_rating(episode)
        appearance = Appearance.find_by({episode_id: episode.id, guest_id: self.id})
        appearance.rating 
    end

    #returns an array of guest's episodes, sorted from highest to lowest rating
    def sorted_episodes
        self.episodes.sort_by{|episode| -self.appearance_rating(episode)}
    end 
end
