class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    # On the Guest show page, add a list of the Episodes the Guest has appeared on.

    # For each Episode, show the:

    # date of the Episode
    # rating for the Appearance
    # Each Episode date should link to the show page for that Episode.

    # def guest_episodes
    #     self.episodes.collect {|episode| episode.date}
    # end

    # def appearance_ratings
    #     guest_episodes.appearance 
    # end
end
